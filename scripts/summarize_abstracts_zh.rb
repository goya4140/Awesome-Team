#!/usr/bin/env ruby
# frozen_string_literal: true

require "digest"
require "json"
require "net/http"
require "thread"
require "uri"
require "yaml"

ROOT = File.expand_path("..", __dir__)
METADATA_PATH = File.join(ROOT, "data", "work-metadata.yaml")
OUTPUT_PATH = File.join(ROOT, "data", "abstract-summaries-zh.yaml")
MODEL = ENV.fetch("OLLAMA_MODEL", "llama3.2")
THREADS = Integer(ENV.fetch("THREADS", "2"))
FORCE = ENV["FORCE"] == "1"

def clean_chinese_summary(text)
  replacements = {
    /Multimodal Large Language Models?/i => "多模态大语言模型",
    /Denoising Diffusion Transformer/i => "去噪扩散 Transformer",
    /Diffusion Framework/i => "扩散框架",
    /Extensive[_ ]evaluations/i => "大量实验",
    /\bmultimodal\b/i => "多模态",
    /\bfoundation models?\b/i => "基础模型",
    /foundation/i => "基础",
    /\bone[- ]trillion\b/i => "一万亿",
    /trillion/i => "万亿",
    /\bexpertise\b/i => "专业能力",
    /\breinforcement learning\b/i => "强化学习",
    /\bdiffusion\b/i => "扩散",
    /\bframeworks?\b/i => "框架",
    /\bparadigms?\b/i => "范式",
    /\bgrounding\b/i => "对齐",
    /\btraining\b/i => "训练",
    /\binference\b/i => "推理",
    /\bdatasets?\b/i => "数据集",
    /\bbenchmarks?\b/i => "基准",
    /\btasks?\b/i => "任务",
    /\bcalled\b/i => "称为"
  }
  replacements.reduce(text) { |memo, (pattern, replacement)| memo.gsub(pattern, replacement) }
              .gsub(/\s+([，。；：])/u, '\1')
              .gsub(/(?<=[\p{Han}])\s+(?=[\p{Han}])/u, "")
              .gsub(/\s{2,}/, " ")
              .strip
end

def summarize(abstract)
  prompt = <<~PROMPT
    请严格根据下面的论文 Abstract，用简体中文写 2—3 句 TL;DR。
    必须覆盖：研究问题、核心方法、Abstract 明确给出的主要实验结论。
    除模型名、数据集名、论文名和常见缩写外，普通技术术语必须翻译成中文，避免不必要的中英夹杂。
    总长度控制在 220 个汉字左右。不要补充 Abstract 没有的信息，不要评价论文，不要输出标题、列表、Markdown 或“TL;DR”前缀。

    Abstract:
    #{abstract.slice(0, 6_000)}
  PROMPT
  uri = URI("http://127.0.0.1:11434/api/generate")
  request = Net::HTTP::Post.new(uri)
  request["Content-Type"] = "application/json"
  request.body = JSON.generate(
    "model" => MODEL,
    "prompt" => prompt,
    "stream" => false,
    "options" => { "temperature" => 0.1, "num_predict" => 220 }
  )
  response = Net::HTTP.start(uri.host, uri.port, open_timeout: 5, read_timeout: 180) do |http|
    http.request(request)
  end
  raise "Ollama HTTP #{response.code}" unless response.code == "200"

  clean_chinese_summary(
    JSON.parse(response.body).fetch("response").strip
        .sub(/\A(?:TL;?DR|摘要|总结)\s*[：:]\s*/i, "")
  )
end

metadata = YAML.load_file(METADATA_PATH).fetch("works")
cache = File.exist?(OUTPUT_PATH) ? YAML.load_file(OUTPUT_PATH).fetch("works", {}) : {}
jobs = Queue.new

metadata.each do |key, item|
  abstract = item["abstract"]
  next if abstract.to_s.strip.empty?

  digest = Digest::SHA256.hexdigest(abstract)
  next if !FORCE && cache.dig(key, "abstract_sha256") == digest && cache.dig(key, "summary_zh").to_s.length >= 30

  jobs << [key, abstract, digest]
end

mutex = Mutex.new
completed = 0
total = jobs.size
workers = Array.new(THREADS) do
  Thread.new do
    loop do
      key, abstract, digest = jobs.pop(true)
      summary = summarize(abstract)
      mutex.synchronize do
        cache[key] = {
          "abstract_sha256" => digest,
          "summary_zh" => summary,
          "model" => MODEL,
          "generated_at" => Time.now.strftime("%Y-%m-%d")
        }
        completed += 1
        warn "summaries #{completed}/#{total}" if (completed % 10).zero? || completed == total
      end
    rescue ThreadError
      break
    rescue StandardError => error
      warn "summary failed for #{key}: #{error.message}"
    end
  end
end
workers.each(&:join)

cache.each_value do |entry|
  entry["summary_zh"] = clean_chinese_summary(entry.fetch("summary_zh"))
end

payload = {
  "schema_version" => 1,
  "last_updated" => Time.now.strftime("%Y-%m-%d"),
  "model" => MODEL,
  "notes" => [
    "Chinese TL;DRs are generated locally and strictly grounded in the stored paper abstract.",
    "Each cache entry is keyed by the SHA-256 digest of its source abstract."
  ],
  "works" => cache.sort.to_h
}
File.write(OUTPUT_PATH, payload.to_yaml(line_width: -1))
warn "wrote #{OUTPUT_PATH}: #{cache.size} cached summaries"
