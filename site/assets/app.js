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
  document.querySelector("#scholar-count").textContent = formatNumber(meta.counts.scholar_links);
  document.querySelector("#last-updated").textContent = meta.last_updated;

  addOptions(elements.region, [...new Set(data.parents.map((parent) => parent.region))], (value) => labels[value] || value);
  addOptions(elements.parent, [...data.parents].sort((a, b) => a.name.localeCompare(b.name)), (parent) => parent.name);
  const directions = [...new Set(data.teams.flatMap((team) => team.profile.directions_zh))].sort((a, b) => a.localeCompare(b, "zh-CN"));
  addOptions(elements.focus, directions);
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
  const scholarAvailable = citation.source === "Google Scholar" && citation.source_url;
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
          ${citationKnown ? `引用 ${formatNumber(citation.count)}` : scholarAvailable ? "Google Scholar ↗" : "非论文条目"}
        </span>
      </summary>
      <div class="work-detail">
        <h4>${metadata.abstract ? "基于 Abstract 的 TL;DR" : "摘要 / 项目说明"}</h4>
        <p>${escapeHtml(metadata.summary)}</p>
        <div class="impact-row">
          ${citationKnown ? `<span class="impact-chip">引用量：${formatNumber(citation.count)} · ${escapeHtml(citation.source)} · ${escapeHtml(citation.checked_at)}</span>` : scholarAvailable ? `<a class="impact-chip scholar-chip" href="${escapeHtml(citation.source_url)}" target="_blank" rel="noreferrer">在 Google Scholar 查看引用量 ↗</a>` : ""}
          ${stars !== undefined ? `<span class="impact-chip">GitHub Stars：${formatNumber(stars)} · 与引用量分开统计</span>` : ""}
          <span class="impact-chip">匹配状态：${escapeHtml(metadata.resolution_status)}</span>
        </div>
        <div class="work-links">
          <a href="${escapeHtml(paperUrl)}" target="_blank" rel="noreferrer">论文 / 项目 ↗</a>
          ${work.url !== paperUrl ? `<a href="${escapeHtml(work.url)}" target="_blank" rel="noreferrer">代码 / 原始入口 ↗</a>` : ""}
          ${citation.source_url ? `<a href="${escapeHtml(citation.source_url)}" target="_blank" rel="noreferrer">引用数据源 ↗</a>` : ""}
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
  return team.homepages.map((page) => {
    const label = page.kind === "github" ? "GitHub" : page.kind === "official" ? "官方网站" : page.kind;
    return `<a href="${escapeHtml(page.url)}" target="_blank" rel="noreferrer">${escapeHtml(label)} ↗</a>`;
  }).join("");
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
  document.querySelectorAll(".team-logo").forEach((image) => {
    image.addEventListener("error", () => {
      image.style.display = "none";
      image.nextElementSibling.style.display = "grid";
    }, { once: true });
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
    const response = await fetch("data/catalog.json");
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
