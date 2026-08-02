#!/usr/bin/env ruby
# frozen_string_literal: true

require "yaml"
require "uri"

ROOT = File.expand_path("..", __dir__)
LEADERS_PATH = File.join(ROOT, "data", "team-leaders.yaml")
TEAMS_PATH = File.join(ROOT, "data", "research-teams.yaml")

# These rosters complete teams whose featured-work metadata does not expose enough
# usable senior authors. Formal titles are used only when an official team page
# documents them. "Influential faculty" and "senior researcher" are editorial
# selections, not claims that the person formally manages the organization.
ROSTERS = {
  "huawei-noahs-ark-lab" => [["Zhenguo Li", "Senior Research Leader"], ["Yinchuan Li", "Senior Researcher"], ["Jian Li", "Senior Researcher"]],
  "baidu-ernie" => [["Haifeng Wang", "Research Leader"], ["Houwen Peng", "Senior Researcher"], ["Jing Liu", "Senior Researcher"]],
  "baidu-paddlepaddle" => [["Haifeng Wang", "Research Leader"], ["Yanjun Ma", "Senior Researcher"], ["Yi Ren", "Senior Researcher"]],
  "ant-areal" => [["Zhiyu Mei", "Lead Author / Senior Researcher"], ["Wei Fu", "Lead Author / Senior Researcher"], ["Yi Wu", "Senior Author / Research Leader"]],
  "rednote-hi-lab" => [["Weijian Luo", "Senior Research Scientist"], ["Debing Zhang", "AGI Team Director"], ["Xiao Wang", "Senior Researcher"]],
  "moonshot-kimi" => [["Zhilin Yang", "Co-Founder / Research Leader"], ["Yuxin Wu", "Co-Founder / Research Leader"], ["Xinyu Zhou", "Co-Founder / Research Leader"]],
  "google-research" => [["Jeff Dean", "Chief Scientist"], ["Yossi Matias", "Research Leader"], ["Blaise Agüera y Arcas", "Research Leader"]],
  "apple-mlx" => [["Awni Hannun", "Founding Contributor / Research Scientist"], ["Jagrit Digani", "Founding Contributor / Research Scientist"], ["Angelos Katharopoulos", "Founding Contributor / Research Scientist"]],
  "anthropic-alignment" => [["Amanda Askell", "Alignment Researcher"], ["Jan Leike", "Alignment Research Leader"], ["Evan Hubinger", "Alignment Researcher"]],
  "anthropic-interpretability" => [["Chris Olah", "Interpretability Research Leader"], ["Nicholas Schiefer", "Interpretability Researcher"], ["Trenton Bricken", "Interpretability Researcher"]],
  "anthropic-frontier-red-team" => [["Logan Graham", "Frontier Red Team Researcher"], ["Kyla Guru", "Frontier Red Team Researcher"], ["Alex Moix", "Frontier Red Team Researcher"]],
  "anthropic-societal-impacts" => [["Deep Ganguli", "Societal Impacts Researcher"], ["Alex Tamkin", "Societal Impacts Researcher"], ["Hannah Rose Kirk", "Societal Impacts Researcher"]],
  "anthropic-economic-research" => [["Maxim Massenkoff", "Economic Researcher"], ["Eva Lyubich", "Economic Researcher"], ["Szymon Sacher", "Economic Researcher"]],
  "tsinghua-air" => [["Ya-Qin Zhang", "Founding Dean"], ["Yang Liu", "Dean / Professor"], ["Wei-Ying Ma", "Chief Scientist"]],
  "pku-wu-lab" => [["Yunfang Wu", "Lab Lead / Professor"], ["Xiaojun Wan", "Influential Affiliated Faculty"], ["Xinyu Dai", "Influential Affiliated Faculty"]],
  "sjtu-mifa" => [["Weiran Huang", "Principal Investigator"], ["Junchi Yan", "Influential Affiliated Faculty"], ["Yao Xie", "Influential Research Collaborator"]],
  "fudan-nlp" => [["Xuanjing Huang", "Professor / Research Leader"], ["Xipeng Qiu", "Professor / Research Leader"], ["Qi Zhang", "Professor / Research Leader"]],
  "ustc-vim" => [["Zilei Wang", "Principal Investigator"], ["Houqiang Li", "Influential Affiliated Faculty"], ["Zheng-Jun Zha", "Influential Affiliated Faculty"]],
  "ustc-ivc" => [["Feng Wu", "Professor / Research Leader"], ["Houqiang Li", "Professor / Research Leader"], ["Dong Liu", "Professor / Research Leader"]],
  "ustc-alpha-lab" => [["An Zhang", "Principal Investigator"], ["Qi Liu", "Influential Affiliated Faculty"], ["Enhong Chen", "Influential Affiliated Faculty"]],
  "nju-lamda" => [["Zhi-Hua Zhou", "Head of LAMDA"], ["De-Chuan Zhan", "Professor / Core Faculty"], ["Yuan Jiang", "Professor / Core Faculty"]],
  "hit-scir" => [["Ting Liu", "Professor / Research Leader"], ["Qin Bing", "Director"], ["Wanxiang Che", "Deputy Director"]],
  "hit-robotics-systems" => [["Hong Liu", "Director"], ["Jingdong Zhao", "Executive Director"], ["Jie Zhao", "Professor / Research Leader"]],
  "xjtu-ai-sec" => [["Xiaohong Guan", "Faculty Lead"], ["Chao Shen", "Faculty Lead"], ["Le Yang", "Professor / Core Faculty"]],
  "xjtu-robotics-institute" => [["Xuesong Mei", "Director"], ["Shitao Chen", "Professor / Core Faculty"], ["Yangmin Li", "Influential Affiliated Faculty"]],
  "hkust-gz-precognition" => [["Junwei Liang", "Director"], ["Changhao Chen", "Influential Affiliated Faculty"], ["Hao Zhao", "Influential Research Collaborator"]],
  "hkust-gz-envision" => [["Ying-Cong Chen", "Director"], ["Qifeng Chen", "Influential Research Collaborator"], ["Xihui Liu", "Influential Research Collaborator"]],
  "hkust-gz-dsail" => [["Lei Chen", "Professor / Research Leader"], ["Hui Xiong", "Professor / Research Leader"], ["Cun-Hui Zhang", "Professor / Research Leader"]],
  "hkust-gz-mdi" => [["Lei Chen", "Principal Investigator"], ["Libin Zheng", "Faculty Collaborator"], ["Hui Xiong", "Influential Affiliated Faculty"]],
  "hkust-gz-hpml" => [["Xiaowen Chu", "Lab Director"], ["Qiong Luo", "Lab Director"], ["Zeyi Wen", "Lab Director"]],
  "cuhk-mmlab" => [["Xiaogang Wang", "Professor / Research Leader"], ["Dahua Lin", "Professor / Research Leader"], ["Wanli Ouyang", "Professor / Research Leader"]],
  "cuhk-t-stone-robotics" => [["Yunhui Liu", "Director"], ["Ben M. Chen", "Professor / Research Leader"], ["Samuel Au", "Professor / Research Leader"]],
  "cuhk-legged-robot-lab" => [["Yunhui Liu", "Faculty Lead"], ["Wai Lun Chan", "Influential Faculty Collaborator"], ["Wei-Hsin Liao", "Influential Faculty Collaborator"]],
  "hkust-dv-lab" => [["Jiaya Jia", "Principal Investigator"], ["Qifeng Chen", "Influential Affiliated Faculty"], ["Long Chen", "Influential Research Collaborator"]],
  "hkust-caire" => [["Pascale Fung", "Director"], ["Dekai Wu", "Influential Affiliated Faculty"], ["Helen Meng", "Influential Affiliated Faculty"]],
  "hkust-mevita-robotics" => [["Yajing Shen", "Principal Investigator"], ["Ming Liu", "Influential Robotics Faculty"], ["Qifeng Chen", "Influential Robotics Faculty"]],
  "nus-ai-institute" => [["David Hsu", "Director / Professor"], ["Wee Sun Lee", "Professor / Research Leader"], ["Min-Yen Kan", "Professor / Research Leader"]],
  "nus-cvml" => [["Tat-Seng Chua", "Professor / Research Leader"], ["Jiashi Feng", "Professor / Research Leader"], ["Mike Zheng Shou", "Professor / Research Leader"]],
  "ntu-grail" => [["Bo An", "Professor / Research Leader"], ["Hanwang Zhang", "Professor / Research Leader"], ["Ziwei Liu", "Professor / Research Leader"]],
  "ntu-mmlab" => [["Chen Change Loy", "Director / Professor"], ["Ziwei Liu", "Professor / Core Faculty"], ["Xingang Pan", "Professor / Core Faculty"]],
  "ntu-nlp" => [["Erik Cambria", "Professor / Research Leader"], ["Francis Bond", "Professor / Research Leader"], ["Yang Liu", "Professor / Research Leader"]],
  "ntu-s-lab" => [["Chen Change Loy", "Professor / Research Leader"], ["Ziwei Liu", "Professor / Research Leader"], ["Bo An", "Professor / Research Leader"]],
  "cmu-language-technologies-institute" => [["Graham Neubig", "Professor / Research Leader"], ["Yiming Yang", "Professor / Research Leader"], ["Alan W. Black", "Professor / Research Leader"]],
  "cmu-robotics-institute" => [["Matthew Johnson-Roberson", "Director"], ["Martial Hebert", "Professor / Research Leader"], ["Christopher Atkeson", "Professor / Research Leader"]],
  "cmu-generative-intelligence-lab" => [["Ruslan Salakhutdinov", "Faculty Lead"], ["Deepak Pathak", "Professor / Core Faculty"], ["Shubham Tulsiani", "Professor / Core Faculty"]],
  "mit-csail" => [["Daniela Rus", "Director"], ["Antonio Torralba", "Professor / Research Leader"], ["Armando Solar-Lezama", "Professor / Research Leader"]],
  "mit-cbmm" => [["Tomaso Poggio", "Co-Director"], ["Gabriel Kreiman", "Professor / Research Leader"], ["James DiCarlo", "Professor / Research Leader"]],
  "stanford-sail" => [["Christopher Manning", "Director / Professor"], ["Fei-Fei Li", "Professor / Research Leader"], ["Chelsea Finn", "Professor / Research Leader"]],
  "stanford-crfm" => [["Percy Liang", "Director"], ["Tatsunori Hashimoto", "Professor / Core Faculty"], ["Sanmi Koyejo", "Professor / Core Faculty"]],
  "berkeley-bair" => [["Pieter Abbeel", "Professor / Research Leader"], ["Sergey Levine", "Professor / Research Leader"], ["Dawn Song", "Professor / Research Leader"]],
  "berkeley-chai" => [["Stuart Russell", "Founder and Faculty Director"], ["Anca Dragan", "Professor / Core Faculty"], ["Jacob Steinhardt", "Professor / Core Faculty"]],
  "berkeley-sky-computing-lab" => [["Ion Stoica", "Director / Professor"], ["Joseph E. Gonzalez", "Professor / Research Leader"], ["Matei Zaharia", "Professor / Research Leader"]],
  "umd-umiacs" => [["Dinesh Manocha", "Professor / Research Leader"], ["Jordan Boyd-Graber", "Professor / Research Leader"], ["Rama Chellappa", "Professor / Research Leader"]],
  "umd-clip" => [["Philip Resnik", "Professor / Research Leader"], ["Jordan Boyd-Graber", "Professor / Research Leader"], ["Marine Carpuat", "Professor / Research Leader"]],
  "umd-maryland-robotics-center" => [["Dinesh Manocha", "Professor / Research Leader"], ["Nikhil Chopra", "Professor / Research Leader"], ["J. Sean Humbert", "Professor / Research Leader"]],
  "umd-gamma" => [["Dinesh Manocha", "Director"], ["Ming C. Lin", "Professor / Core Faculty"], ["Qi Sun", "Professor / Core Faculty"]],
  "ucsd-hdsi-ai-ml" => [["Rose Yu", "Professor / Research Leader"], ["Julian McAuley", "Professor / Research Leader"], ["Kamalika Chaudhuri", "Professor / Research Leader"]],
  "ucsd-contextual-robotics" => [["Henrik Christensen", "Director / Professor"], ["Nikolay Atanasov", "Professor / Research Leader"], ["Laurel Riek", "Professor / Research Leader"]],
  "ucsd-cvrr-lisa" => [["Mohan Trivedi", "Director / Professor"], ["Nuno Vasconcelos", "Professor / Research Leader"], ["Truong Nguyen", "Professor / Research Leader"]],
  "uw-wail" => [["Hannaneh Hajishirzi", "Professor / Research Leader"], ["Ali Farhadi", "Professor / Research Leader"], ["Dieter Fox", "Professor / Research Leader"]],
  "uw-robotics" => [["Dieter Fox", "Professor / Research Leader"], ["Siddhartha Srinivasa", "Professor / Research Leader"], ["Byron Boots", "Professor / Research Leader"]],
  "uw-nlp" => [["Noah A. Smith", "Professor / Research Leader"], ["Hannaneh Hajishirzi", "Professor / Research Leader"], ["Luke Zettlemoyer", "Professor / Research Leader"]],
  "uw-weird-lab" => [["Abhishek Gupta", "Principal Investigator"], ["Dieter Fox", "Influential Affiliated Faculty"], ["Byron Boots", "Influential Affiliated Faculty"]],
  "uiuc-nlp" => [["Dan Roth", "Professor / Research Leader"], ["Heng Ji", "Professor / Research Leader"], ["Julia Hockenmaier", "Professor / Research Leader"]],
  "uiuc-blender-lab" => [["Heng Ji", "Director"], ["Dan Roth", "Influential Affiliated Faculty"], ["Julia Hockenmaier", "Influential Affiliated Faculty"]],
  "uiuc-dais" => [["Jiawei Han", "Professor / Research Leader"], ["Kevin Chang", "Professor / Research Leader"], ["Aditya Parameswaran", "Professor / Research Leader"]],
  "pku-camera-intelligence" => [["Boxin Shi", "Principal Investigator"], ["Yizhou Wang", "Influential Affiliated Faculty"], ["Song-Chun Zhu", "Influential Affiliated Faculty"]],
  "cuhk-language-processing-lab" => [["Zhenguang Cai", "Lab Director"], ["Kam-Fai Wong", "Influential Affiliated Faculty"], ["John Lee", "Influential Affiliated Faculty"]],
  "stanford-iliad" => [["Dorsa Sadigh", "Faculty Lead"], ["Mykel J. Kochenderfer", "Faculty Collaborator"], ["Sanmi Koyejo", "Faculty Collaborator"]],
  "berkeley-rail" => [["Sergey Levine", "Faculty Lead"], ["Pieter Abbeel", "Influential Robotics Faculty"], ["Anca Dragan", "Influential Robotics Faculty"]],
  "tsinghua-thunlp" => [["Maosong Sun", "Professor / Research Leader"], ["Zhiyuan Liu", "Professor / Core Faculty"], ["Lei Li", "Professor / Core Faculty"]],
  "tsinghua-keg-thudm" => [["Jie Tang", "Professor / Research Leader"], ["Juanzi Li", "Professor / Core Faculty"], ["Zhiyuan Liu", "Professor / Core Faculty"]],
  "tsinghua-coai" => [["Minlie Huang", "Professor / Research Leader"], ["Zhifang Sui", "Professor / Research Leader"], ["Yang Liu", "Professor / Research Leader"]],
  "pku-alignment" => [["Yaodong Yang", "Principal Investigator"], ["Zongqing Lu", "Influential Affiliated Faculty"], ["Jun Wang", "Influential Research Collaborator"]],
  "pku-dair" => [["Bin Cui", "Professor / Research Leader"], ["Xiaoyong Du", "Professor / Research Leader"], ["Lei Zou", "Professor / Research Leader"]],
  "pku-core" => [["Song-Chun Zhu", "Professor / Research Leader"], ["Yanchao Bi", "Professor / Research Leader"], ["Qining Wang", "Professor / Research Leader"]],
  "zju-nlp-kg" => [["Huajun Chen", "Professor / Research Leader"], ["Ningyu Zhang", "Professor / Core Faculty"], ["Yixin Cao", "Professor / Core Faculty"]],
  "zju-real" => [["Weiming Lu", "Professor / Research Leader"], ["Yueting Zhuang", "Professor / Research Leader"], ["Jiajun Bu", "Professor / Research Leader"]],
  "zju-3dv" => [["Xiaowei Zhou", "Professor / Research Leader"], ["Hujun Bao", "Professor / Research Leader"], ["Guofeng Zhang", "Professor / Research Leader"]],
  "sjtu-mint" => [["Yanwen Zou", "Faculty Lead"], ["Weiyao Lin", "Influential Affiliated Faculty"], ["Junchi Yan", "Influential Affiliated Faculty"]],
  "sjtu-gair-nlp" => [["Pengfei Liu", "Faculty Lead"], ["Lu Chen", "Influential Affiliated Faculty"], ["Kai Yu", "Influential Affiliated Faculty"]],
  "sjtu-rl2" => [["Yue Gao", "Faculty Lead"], ["Junchi Yan", "Influential Affiliated Faculty"], ["Yao Xie", "Influential Research Collaborator"]],
  "fudan-disc" => [["Xuanjing Huang", "Professor / Research Leader"], ["Xipeng Qiu", "Professor / Research Leader"], ["Qi Zhang", "Professor / Research Leader"]],
  "fudan-data-intelligence-lab" => [["Dejing Dou", "Principal Investigator"], ["Yang Zhou", "Professor / Core Faculty"], ["Keping Yang", "Influential Research Collaborator"]],
  "ustc-mei-lab" => [["Zheng-Jun Zha", "Professor / Research Leader"], ["Houqiang Li", "Influential Affiliated Faculty"], ["Qi Tian", "Influential Research Collaborator"]],
  "nju-lamda-cl" => [["De-Chuan Zhan", "Professor / Research Leader"], ["Lijun Zhang", "Professor / Research Leader"], ["Zhi-Hua Zhou", "Professor / Research Leader"]],
  "hku-data-intelligence-lab" => [["Chao Huang", "Principal Investigator"], ["Dawei Yin", "Influential Research Collaborator"], ["Reynold Cheng", "Influential Affiliated Faculty"]],
  "hku-sail" => [["Sai-Kit Yeung", "Faculty Lead"], ["Ping Luo", "Influential Affiliated Faculty"], ["Wenping Wang", "Influential Affiliated Faculty"]],
  "hku-intelligent-cybersecurity" => [["Hao Chen", "Faculty Lead"], ["Kui Ren", "Influential Affiliated Faculty"], ["Guoliang Xing", "Influential Affiliated Faculty"]],
  "hkust-aerial-robotics" => [["Shaojie Shen", "Faculty Lead"], ["Ming Liu", "Influential Robotics Faculty"], ["Qifeng Chen", "Influential Robotics Faculty"]],
  "nus-nlp" => [["Hwee Tou Ng", "Professor / Research Leader"], ["Min-Yen Kan", "Professor / Research Leader"], ["Nancy Chen", "Influential Affiliated Faculty"]],
  "nus-ai-lab" => [["David Hsu", "Professor / Research Leader"], ["Wee Sun Lee", "Professor / Research Leader"], ["Leong Tze Yun", "Professor / Research Leader"]],
  "ntu-declare" => [["Soujanya Poria", "Principal Investigator"], ["Erik Cambria", "Influential Affiliated Faculty"], ["Sinno Jialin Pan", "Influential Affiliated Faculty"]],
  "cmu-machine-learning-department" => [["Bhiksha Raj", "Professor / Research Leader"], ["Aarti Singh", "Professor / Research Leader"], ["Ruslan Salakhutdinov", "Professor / Research Leader"]],
  "cmu-auton-lab" => [["Artur Dubrawski", "Faculty Lead"], ["Jeff Schneider", "Professor / Research Leader"], ["Barnabás Póczos", "Professor / Research Leader"]],
  "mit-improbable-ai" => [["Pulkit Agrawal", "Principal Investigator"], ["Leslie Pack Kaelbling", "Influential Robotics Faculty"], ["Russ Tedrake", "Influential Robotics Faculty"]],
  "mit-embodied-intelligence" => [["Leslie Pack Kaelbling", "Faculty Lead"], ["Tomas Lozano-Pérez", "Professor / Research Leader"], ["Russ Tedrake", "Influential Robotics Faculty"]],
  "stanford-nlp" => [["Christopher D. Manning", "Professor / Research Leader"], ["Christopher Potts", "Professor / Research Leader"], ["Dan Jurafsky", "Professor / Research Leader"]],
  "stanford-svl" => [["Fei-Fei Li", "Professor / Research Leader"], ["Jiajun Wu", "Professor / Core Faculty"], ["Silvio Savarese", "Influential Faculty Collaborator"]],
  "berkeley-nlp" => [["Dan Klein", "Professor / Research Leader"], ["David Bamman", "Professor / Research Leader"], ["Marti Hearst", "Professor / Research Leader"]],
  "ucsd-existential-robotics" => [["Nikolay Atanasov", "Faculty Lead"], ["Henrik Christensen", "Influential Robotics Faculty"], ["Laurel Riek", "Influential Robotics Faculty"]],
  "uiuc-secure-learning-lab" => [["Bo Li", "Principal Investigator"], ["David Forsyth", "Influential Affiliated Faculty"], ["Jian Huang", "Influential Affiliated Faculty"]]
}.freeze

REPLACE_TEAM_IDS = %w[
  pku-camera-intelligence cuhk-language-processing-lab stanford-iliad berkeley-rail
  tsinghua-thunlp tsinghua-keg-thudm tsinghua-coai pku-alignment pku-dair pku-core
  zju-nlp-kg zju-real zju-3dv sjtu-mint sjtu-gair-nlp sjtu-rl2 fudan-disc
  fudan-data-intelligence-lab ustc-mei-lab nju-lamda-cl hku-data-intelligence-lab
  hku-sail hku-intelligent-cybersecurity hkust-aerial-robotics nus-nlp nus-ai-lab
  ntu-declare cmu-machine-learning-department cmu-auton-lab mit-improbable-ai
  mit-embodied-intelligence stanford-nlp stanford-svl berkeley-nlp
  ucsd-existential-robotics uiuc-secure-learning-lab
].freeze

def scholar_url(name)
  "https://scholar.google.com/citations?view_op=search_authors&mauthors=#{URI.encode_www_form_component(name)}"
end

def slug(name)
  name.downcase.gsub(/[^a-z0-9]+/, "-").gsub(/\A-|-\z/, "")
end

leaders = YAML.load_file(LEADERS_PATH)
teams = YAML.load_file(TEAMS_PATH).fetch("teams")
team_index = teams.to_h { |team| [team.fetch("id"), team] }
people = leaders.fetch("people")
memberships = leaders.fetch("teams")

ROSTERS.each do |team_id, roster|
  team = team_index.fetch(team_id)
  evidence_url = team.fetch("evidence").fetch("affiliation").first
  existing = REPLACE_TEAM_IDS.include?(team_id) ? [] : memberships.fetch(team_id, [])
  existing_people = existing.map { |entry| entry.fetch("person") }

  roster.each do |name, role|
    break if existing.size >= 3

    person_id = people.find { |_id, person| person.fetch("name").casecmp?(name) }&.first || slug(name)
    next if existing_people.include?(person_id)

    people[person_id] ||= {
      "name" => name,
      "profile_url" => scholar_url(name),
      "profile_kind" => "google_scholar_search"
    }

    formal = role.match?(/Director|Dean|Founder|Chief|Principal Investigator|Faculty Lead|Head/)
    basis = if formal
      "Selected from the official team or institutional page as a documented research leader; the linked evidence page is the source of the affiliation or leadership claim."
    else
      "Editorially selected as one of the team's or institution's most influential faculty/research contributors; the role does not imply formal management responsibility."
    end
    existing << {
      "person" => person_id,
      "role" => role,
      "evidence_url" => evidence_url,
      "selection_basis" => basis
    }
    existing_people << person_id
  end
  memberships[team_id] = existing
end

leaders["last_updated"] = "2026-07-30"
File.write(LEADERS_PATH, YAML.dump(leaders))

puts "Applied curated rosters for #{ROSTERS.size} teams."
