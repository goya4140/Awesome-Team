const CATALOG_VERSION = "20260730-citations-v1";
const LOGO_WALL_TEAM_IDS = [
  "bytedance-seed", "alibaba-qwen", "alibaba-damo-academy", "alibaba-modelscope",
  "tencent-hunyuan", "tencent-ai-lab", "tencent-arc-lab", "huawei-noahs-ark-lab",
  "baidu-paddlepaddle", "kuaishou-kling-ai-research", "kuaishou-kolors", "meituan-longcat",
  "ant-interactive-ai-lab", "ant-inclusion-ai", "xiaomi-mimo", "xiaohongshu-firered",
  "deepseek-research", "zhipu-glm", "moonshot-kimi", "minimax-research",
  "google-deepmind", "google-research", "meta-fair", "amazon-science",
  "apple-mlx", "openai-research", "anthropic-alignment", "tsinghua-thunlp",
  "tsinghua-keg-thudm", "tsinghua-coai", "pku-alignment", "pku-dair",
  "zju-real", "zju-3dv", "sjtu-mint", "fudan-nlp", "fudan-disc", "ustc-ivc",
  "nju-lamda", "hkust-gz-dsail", "cuhk-mmlab", "nus-nlp", "cmu-robotics-institute", "mit-cbmm",
  "nju-lamda-cl", "ntu-declare", "cmu-auton-lab", "mit-improbable-ai",
  "stanford-crfm", "stanford-nlp", "berkeley-chai", "berkeley-rail",
  "berkeley-sky-computing-lab", "umd-umiacs", "uw-robotics", "shanghai-ai-lab-internscience",
];

const state = {
  data: null,
  query: "",
  region: "",
  entity: "",
  parent: "",
  focus: "",
  status: "",
  figuresOnly: false,
};

const elements = {
  list: document.querySelector("#team-list"),
  empty: document.querySelector("#empty-state"),
  resultCount: document.querySelector("#result-count"),
  signalStream: document.querySelector("#signal-stream"),
  signalProgress: document.querySelector("#signal-progress"),
  directionTrack: document.querySelector("#direction-track"),
  logoWall: document.querySelector("#logo-wall"),
  search: document.querySelector("#search"),
  region: document.querySelector("#region-filter"),
  entity: document.querySelector("#entity-filter"),
  parent: document.querySelector("#parent-filter"),
  focus: document.querySelector("#focus-filter"),
  status: document.querySelector("#status-filter"),
  figuresOnly: document.querySelector("#figures-only"),
  clear: document.querySelector("#clear-filters"),
};

const labels = {
  "CN-mainland": "中国大陆",
  US: "美国",
  HK: "中国香港",
  SG: "新加坡",
  verified: "已核验",
  provisional: "待完善",
  paper: "论文",
  open_source: "开源成果",
  paper_or_project: "论文 / 项目",
  research_index: "研究入口",
};

function escapeHtml(value = "") {
  return String(value)
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function formatNumber(value) {
  if (value === null || value === undefined) return "—";
  return new Intl.NumberFormat("zh-CN", { notation: value > 9999 ? "compact" : "standard" }).format(value);
}

function addOptions(select, values, labeler = (value) => value) {
  values.forEach((value) => {
    const option = document.createElement("option");
    option.value = typeof value === "string" ? value : value.id;
    option.textContent = labeler(value);
    select.append(option);
  });
}

function setup(data) {
  const { meta } = data;
  document.querySelector("#team-count").textContent = formatNumber(meta.counts.teams);
  document.querySelector("#parent-count").textContent = formatNumber(meta.counts.parents);
  document.querySelector("#paper-count").textContent = formatNumber(meta.counts.resolved_papers);
  document.querySelector("#figure-count").textContent = formatNumber(meta.counts.works_with_figures);
  document.querySelector("#scholar-count").textContent = formatNumber(meta.counts.semantic_scholar_counts);
  document.querySelector("#last-updated").textContent = meta.last_updated;

  addOptions(elements.region, [...new Set(data.parents.map((parent) => parent.region))], (value) => labels[value] || value);
  addOptions(elements.parent, [...data.parents].sort((a, b) => a.name.localeCompare(b.name)), (parent) => parent.name);
  const directions = [...new Set(data.teams.flatMap((team) => team.profile.directions_zh))].sort((a, b) => a.localeCompare(b, "zh-CN"));
  addOptions(elements.focus, directions);
  setupSignalStream(data.teams);
  setupDirectionBoard(data.teams);
  setupLogoWall(data.teams, meta.counts.teams);
}

function selectLogoTeams(teams) {
  const teamsById = new Map(teams.map((team) => [team.id, team]));
  return LOGO_WALL_TEAM_IDS.map((teamId) => teamsById.get(teamId)).filter(Boolean);
}

function setupLogoWall(teams, totalCount) {
  if (!elements.logoWall) return;
  const selected = selectLogoTeams(teams);
  const summaryPosition = Math.min(26, selected.length);
  const tiles = selected.map((team, index) => {
    const initials = team.name.split(/\s+/).slice(0, 2).map((word) => word[0]).join("").toUpperCase();
    const logo = `
      <div class="logo-wall-item" title="${escapeHtml(team.name)} · 已核验官方标识">
        <img class="logo-wall-image" src="assets/team-logos/${escapeHtml(team.id)}.webp" width="240" height="240" alt="${escapeHtml(team.name)} 官方标识" loading="lazy" decoding="async">
        <span class="logo-wall-fallback">${escapeHtml(initials)}</span>
      </div>`;
    if (index !== summaryPosition) return logo;
    return `
      <div class="logo-wall-summary">
        <strong>${formatNumber(totalCount)}</strong>
        <span>RESEARCH<br>TEAMS</span>
      </div>
      ${logo}`;
  });
  elements.logoWall.innerHTML = tiles.join("");
}

function paperSignal(team, work) {
  const paper = work.metadata?.paper || {};
  if (!paper.title) return null;
  return {
    title: paper.title,
    team: team.name,
    parent: team.parent?.name,
    year: paper.year,
    venue: paper.venue,
    citations: work.metadata?.citation?.count,
  };
}

function setupSignalStream(teams) {
  const signals = teams
    .flatMap((team) => team.representative_works.map((work) => paperSignal(team, work)))
    .filter(Boolean)
    .sort((a, b) => (b.year || 0) - (a.year || 0) || (b.citations || 0) - (a.citations || 0))
    .slice(0, 18);

  if (!signals.length) return;

  let offset = 0;
  const renderSignals = () => {
    const visible = Array.from({ length: 3 }, (_, index) => signals[(offset + index) % signals.length]);
    elements.signalStream.innerHTML = visible.map((signal, index) => `
      <article class="signal-item" style="animation-delay:${index * 80}ms">
        <span class="signal-index">${String(offset + index + 1).padStart(2, "0")}</span>
        <div>
          <h3>${escapeHtml(signal.title)}</h3>
          <p class="signal-meta">${escapeHtml([
            signal.team,
            signal.venue,
            signal.year,
            Number.isInteger(signal.citations) ? `引用 ${formatNumber(signal.citations)}` : null,
          ].filter(Boolean).join(" · "))}</p>
        </div>
      </article>
    `).join("");
    elements.signalProgress.textContent = `${String(offset + 1).padStart(2, "0")} / ${String(signals.length).padStart(2, "0")}`;
  };

  renderSignals();
  if (!window.matchMedia("(prefers-reduced-motion: reduce)").matches && signals.length > 3) {
    window.setInterval(() => {
      offset = (offset + 1) % signals.length;
      renderSignals();
    }, 4200);
  }
}

function setupDirectionBoard(teams) {
  const counts = new Map();
  teams.forEach((team) => {
    team.profile.directions_zh.forEach((direction) => {
      counts.set(direction, (counts.get(direction) || 0) + 1);
    });
  });

  const directions = [...counts.entries()]
    .sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0], "zh-CN"))
    .slice(0, 8);
  const rows = directions
    .map(([direction, count]) => `<span data-count="${formatNumber(count)} TEAMS">${escapeHtml(direction)}</span>`)
    .join("");
  elements.directionTrack.innerHTML = rows + rows;
}

function searchableText(team) {
  return [
    team.name,
    team.parent.name,
    team.profile.introduction,
    ...team.profile.directions_zh,
    ...team.profile.leaders.flatMap((leader) => [leader.name, leader.role]),
    ...team.representative_works.flatMap((work) => [
      work.title,
      work.metadata.paper?.title,
      work.metadata.summary,
    ]),
  ].filter(Boolean).join(" ").toLowerCase();
}

function hasFigure(team) {
  return team.representative_works.some((work) => work.metadata.figure?.image_url);
}

function filteredTeams() {
  const query = state.query.trim().toLowerCase();
  return state.data.teams.filter((team) => {
    if (query && !searchableText(team).includes(query)) return false;
    if (state.region && team.parent.region !== state.region) return false;
    if (state.entity && team.parent.organization_class !== state.entity) return false;
    if (state.parent && team.parent_id !== state.parent) return false;
    if (state.focus && !team.profile.directions_zh.includes(state.focus)) return false;
    if (state.status && team.status !== state.status) return false;
    if (state.figuresOnly && !hasFigure(team)) return false;
    return true;
  });
}

function leaderMarkup(profile) {
  if (profile.leaders.length) {
    return profile.leaders.map((leader) => {
      const sourceLabel = leader.profile_kind === "google_scholar_search" ? " · Scholar" : "";
      return `<a href="${escapeHtml(leader.url)}" target="_blank" rel="noreferrer">${escapeHtml(leader.name)}</a>` +
        ` · ${escapeHtml(leader.role)}${sourceLabel}`;
    }).join("<br>");
  }
  return `${escapeHtml(profile.leadership_note)} ` +
    `<a href="${escapeHtml(profile.leadership_source)}" target="_blank" rel="noreferrer">成员页 ↗</a>`;
}

function workMarkup(work) {
  const metadata = work.metadata;
  const paper = metadata.paper || {};
  const citation = metadata.citation || {};
  const figure = metadata.figure;
  const title = paper.title || work.title;
  const subline = [paper.venue, paper.year, labels[work.kind]].filter(Boolean).join(" · ");
  const citationKnown = citation.count !== null && citation.count !== undefined;
  const googleScholarUrl = citation.google_scholar_url ||
    (citation.source === "Google Scholar" ? citation.source_url : null);
  const influentialKnown = Number.isInteger(citation.influential_count) &&
    citation.influential_count > 0;
  const stars = metadata.code_impact?.github_stars;
  const paperUrl = paper.url || work.url;

  return `
    <details class="work">
      <summary>
        <span class="work-title">
          ${escapeHtml(title)}
          <span class="work-subline">${escapeHtml(subline)}</span>
        </span>
        <span class="citation-badge ${citationKnown ? "" : "unknown"}">
          ${citationKnown ? `引用 ${formatNumber(citation.count)}` : googleScholarUrl ? "Google Scholar ↗" : "非论文条目"}
        </span>
      </summary>
      <div class="work-detail">
        <h4>${metadata.abstract ? "基于 Abstract 的 TL;DR" : "摘要 / 项目说明"}</h4>
        <p>${escapeHtml(metadata.summary)}</p>
        <div class="impact-row">
          ${citationKnown ? `<span class="impact-chip">引用量：${formatNumber(citation.count)} · ${escapeHtml(citation.source)} · ${escapeHtml(citation.checked_at)}</span>` : ""}
          ${influentialKnown ? `<span class="impact-chip">高影响引用：${formatNumber(citation.influential_count)} · Semantic Scholar</span>` : ""}
          ${!citationKnown && googleScholarUrl ? `<a class="impact-chip scholar-chip" href="${escapeHtml(googleScholarUrl)}" target="_blank" rel="noreferrer">在 Google Scholar 检索 ↗</a>` : ""}
          ${stars !== undefined ? `<span class="impact-chip">GitHub Stars：${formatNumber(stars)} · 与引用量分开统计</span>` : ""}
          <span class="impact-chip">匹配状态：${escapeHtml(metadata.resolution_status)}</span>
        </div>
        <div class="work-links">
          <a href="${escapeHtml(paperUrl)}" target="_blank" rel="noreferrer">论文 / 项目 ↗</a>
          ${work.url !== paperUrl ? `<a href="${escapeHtml(work.url)}" target="_blank" rel="noreferrer">代码 / 原始入口 ↗</a>` : ""}
          ${citation.source_url && citation.source === "Semantic Scholar" ? `<a href="${escapeHtml(citation.source_url)}" target="_blank" rel="noreferrer">Semantic Scholar ↗</a>` : ""}
          ${googleScholarUrl ? `<a href="${escapeHtml(googleScholarUrl)}" target="_blank" rel="noreferrer">Google Scholar ↗</a>` : ""}
        </div>
        ${figure ? `
          <figure class="paper-figure">
            <div class="figure-label">关键流程 / 方法图</div>
            <a href="${escapeHtml(figure.source_page)}" target="_blank" rel="noreferrer">
              <img src="${escapeHtml(figure.image_url)}" alt="${escapeHtml(figure.caption)}" loading="lazy">
            </a>
            <figcaption>${escapeHtml(figure.caption)} <a href="${escapeHtml(figure.source_page)}" target="_blank" rel="noreferrer">查看原文 ↗</a></figcaption>
          </figure>` : ""}
      </div>
    </details>`;
}

function officialLinks(team) {
  const profilePages = {
    "bytedance-seed": ["seed.html", "进入 Seed 研究专页 →"],
    "tencent-hunyuan": ["hunyuan.html", "进入混元研究专页 →"],
  };
  const page = profilePages[team.id];
  const profileLink = page
    ? `<a class="team-deep-link" href="${page[0]}">${page[1]}</a>`
    : "";
  const externalLinks = team.homepages.map((page) => {
    const label = page.kind === "github" ? "GitHub" : page.kind === "official" ? "官方网站" : page.kind;
    return `<a href="${escapeHtml(page.url)}" target="_blank" rel="noreferrer">${escapeHtml(label)} ↗</a>`;
  }).join("");
  return profileLink + externalLinks;
}

function teamMarkup(team) {
  const profile = team.profile;
  const initials = team.name.split(/\s+/).slice(0, 2).map((word) => word[0]).join("").toUpperCase();
  const figureCount = team.representative_works.filter((work) => work.metadata.figure?.image_url).length;
  const resolvedCount = team.representative_works.filter((work) => work.metadata.resolution_status === "resolved").length;
  const recentDate = team.recent_work.recency?.recent_at || "日期待核验";

  return `
    <article class="team-card" id="${escapeHtml(team.id)}">
      <div class="team-header">
        <div class="team-logo-wrap">
          <img class="team-logo" src="${escapeHtml(profile.logo.url)}" alt="${escapeHtml(team.name)} logo" loading="lazy">
          <span class="logo-fallback">${escapeHtml(initials)}</span>
        </div>
        <div>
          <p class="team-parent">${escapeHtml(team.parent.name)}</p>
          <h3>${escapeHtml(team.name)}</h3>
        </div>
        <span class="status ${escapeHtml(team.status)}">${labels[team.status] || team.status}</span>
      </div>
      <p class="team-intro">${escapeHtml(profile.introduction)}</p>
      <div class="team-meta">
        <div class="meta-item">
          <span>所属机构</span>
          <p>${escapeHtml(team.parent.name)} · ${escapeHtml(labels[team.parent.region] || team.parent.region)}</p>
        </div>
        <div class="meta-item">
          <span>代表性负责人 / 教师</span>
          <p>${leaderMarkup(profile)}</p>
        </div>
      </div>
      <div class="tag-list">
        ${profile.directions_zh.map((direction) => `<span class="tag">${escapeHtml(direction)}</span>`).join("")}
      </div>
      <section class="recent-work">
        <div class="recent-heading">
          <div><span>RECENT WORK</span><h4>最近工作</h4></div>
          <time>${escapeHtml(recentDate)}</time>
        </div>
        ${workMarkup(team.recent_work)}
      </section>
      <details class="works-group">
        <summary><span>代表作 · ${team.representative_works.length} 项</span><span>${resolvedCount} 篇已匹配 · ${figureCount} 张原文图</span></summary>
        <div class="works-body">${team.representative_works.map(workMarkup).join("")}</div>
      </details>
      <div class="official-links">${officialLinks(team)}</div>
    </article>`;
}

function bindLogoFallbacks() {
  document.querySelectorAll(".team-logo, .logo-wall-image").forEach((image) => {
    const showFallback = () => {
      image.style.display = "none";
      image.nextElementSibling.style.display = "grid";
    };
    if (image.complete && image.naturalWidth === 0) {
      showFallback();
    } else {
      image.addEventListener("error", showFallback, { once: true });
    }
  });
}

function render() {
  const teams = filteredTeams();
  elements.resultCount.textContent = teams.length;
  elements.empty.hidden = teams.length !== 0;
  elements.list.hidden = teams.length === 0;
  elements.list.innerHTML = teams.map(teamMarkup).join("");
  bindLogoFallbacks();
}

function bindEvents() {
  let timer;
  elements.search.addEventListener("input", (event) => {
    clearTimeout(timer);
    timer = setTimeout(() => {
      state.query = event.target.value;
      render();
    }, 90);
  });
  [
    ["region", elements.region],
    ["entity", elements.entity],
    ["parent", elements.parent],
    ["focus", elements.focus],
    ["status", elements.status],
  ].forEach(([key, element]) => {
    element.addEventListener("change", (event) => {
      state[key] = event.target.value;
      render();
    });
  });
  elements.figuresOnly.addEventListener("change", (event) => {
    state.figuresOnly = event.target.checked;
    render();
  });
  elements.clear.addEventListener("click", () => {
    Object.assign(state, { query: "", region: "", entity: "", parent: "", focus: "", status: "", figuresOnly: false });
    elements.search.value = "";
    [elements.region, elements.entity, elements.parent, elements.focus, elements.status].forEach((select) => { select.value = ""; });
    elements.figuresOnly.checked = false;
    render();
  });
  document.addEventListener("keydown", (event) => {
    if (event.key === "/" && document.activeElement.tagName !== "INPUT") {
      event.preventDefault();
      elements.search.focus();
    }
  });
}

async function init() {
  try {
    const response = await fetch(`data/catalog.json?v=${CATALOG_VERSION}`, { cache: "no-store" });
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    state.data = await response.json();
    setup(state.data);
    bindEvents();
    render();
  } catch (error) {
    elements.list.innerHTML = `<div class="empty-state"><h3>数据加载失败</h3><p>${escapeHtml(error.message)}</p></div>`;
  }
}

init();
