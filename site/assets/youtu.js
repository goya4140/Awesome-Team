const PAGE_SIZE = 10;

const state = { papers: [], filtered: [], page: 1, query: "", topic: "", year: "", evidence: "", sort: "desc" };
const elements = {
  search: document.querySelector("#paper-search"),
  topic: document.querySelector("#topic-filter"),
  year: document.querySelector("#year-filter"),
  evidence: document.querySelector("#evidence-filter"),
  sort: document.querySelector("#sort-filter"),
  clear: document.querySelector("#clear-filters"),
  count: document.querySelector("#results-count"),
  list: document.querySelector("#paper-list"),
  pagination: document.querySelector("#pagination"),
  keywordHighlights: document.querySelector("#keyword-highlights"),
};

function escapeHtml(value) {
  return String(value ?? "")
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function truncate(value, length) {
  const text = String(value || "");
  return text.length > length ? `${text.slice(0, length - 1).trim()}…` : text;
}

function optionMarkup(values) {
  return values.map((value) => `<option value="${escapeHtml(value)}">${escapeHtml(value)}</option>`).join("");
}

function paperMarkup(paper, absoluteIndex) {
  const links = [
    paper.paper_url ? `<a href="${escapeHtml(paper.paper_url)}" target="_blank" rel="noreferrer">论文原文 ↗</a>` : "",
    paper.code_url ? `<a href="${escapeHtml(paper.code_url)}" target="_blank" rel="noreferrer">代码 / 项目 ↗</a>` : "",
    `<a href="${escapeHtml(paper.attribution.source_url)}" target="_blank" rel="noreferrer">归属证据 ↗</a>`,
  ].filter(Boolean).join("");
  const abstract = paper.abstract
    ? `<div class="abstract-block"><p class="detail-label">ABSTRACT · ARXIV</p><p class="paper-abstract">${escapeHtml(paper.abstract)}</p></div>`
    : '<div class="abstract-block"><p class="detail-label">ABSTRACT</p><p class="paper-abstract">当前公开索引未提供可直接同步的 arXiv Abstract，请通过论文原文查看。</p></div>';
  return `
    <details class="paper-card">
      <summary class="paper-summary">
        <span class="paper-index">${String(absoluteIndex + 1).padStart(3, "0")}</span>
        <div class="paper-title"><h3>${escapeHtml(paper.title)}</h3><p>${escapeHtml(truncate(paper.authors, 230))}</p></div>
        <div class="paper-quick-meta"><span>${escapeHtml(paper.year)}</span><span>${escapeHtml(paper.topic)}</span><span>${escapeHtml(paper.attribution.label)}</span></div>
        <span class="paper-toggle" aria-hidden="true">+</span>
      </summary>
      <div class="paper-detail">
        <div class="paper-text-block">
          <p class="detail-label">PUBLICATION</p>
          <p class="paper-tldr">${escapeHtml(paper.venue)}</p>
          ${abstract}
          <div class="authors-block"><p class="detail-label">AUTHORS</p><p>${escapeHtml(paper.authors || "公开条目未列出作者")}</p></div>
          <p class="evidence-note">归属类型：${escapeHtml(paper.attribution.label)}。本条目由对应公开来源纳入团队级工作集，不据此推断完整内部作者名册。</p>
          <div class="paper-links">${links}</div>
        </div>
      </div>
    </details>`;
}

function renderPagination() {
  const pages = Math.max(1, Math.ceil(state.filtered.length / PAGE_SIZE));
  const current = Math.min(state.page, pages);
  const start = Math.max(1, Math.min(current - 2, pages - 4));
  const end = Math.min(pages, start + 4);
  const buttons = [`<button type="button" data-page="${current - 1}" ${current === 1 ? "disabled" : ""}>上一页</button>`];
  for (let page = start; page <= end; page += 1) {
    buttons.push(`<button type="button" data-page="${page}" ${page === current ? 'aria-current="page"' : ""}>${page}</button>`);
  }
  buttons.push(`<button type="button" data-page="${current + 1}" ${current === pages ? "disabled" : ""}>下一页</button>`);
  elements.pagination.innerHTML = buttons.join("");
}

function render() {
  const start = (state.page - 1) * PAGE_SIZE;
  const papers = state.filtered.slice(start, start + PAGE_SIZE);
  elements.count.textContent = `共 ${state.filtered.length} 篇 · 第 ${state.page} / ${Math.max(1, Math.ceil(state.filtered.length / PAGE_SIZE))} 页`;
  elements.list.innerHTML = papers.length
    ? papers.map((paper, index) => paperMarkup(paper, start + index)).join("")
    : '<div class="empty-state">没有符合当前筛选条件的论文。</div>';
  renderPagination();
}

function applyFilters() {
  const query = state.query.trim().toLowerCase();
  state.filtered = state.papers.filter((paper) => {
    const haystack = [paper.title, paper.authors, paper.abstract, paper.venue, paper.topic].join(" ").toLowerCase();
    return (!query || haystack.includes(query))
      && (!state.topic || paper.topic === state.topic)
      && (!state.year || String(paper.year) === state.year)
      && (!state.evidence || paper.attribution.kind === state.evidence);
  }).sort((left, right) => {
    const direction = state.sort === "asc" ? 1 : -1;
    return ((left.published_at || String(left.year)).localeCompare(right.published_at || String(right.year)) || left.title.localeCompare(right.title)) * direction;
  });
  state.page = 1;
  render();
}

function bindControls() {
  [[elements.search, "input", "query"], [elements.topic, "change", "topic"], [elements.year, "change", "year"], [elements.evidence, "change", "evidence"], [elements.sort, "change", "sort"]]
    .forEach(([element, eventName, key]) => element.addEventListener(eventName, (event) => { state[key] = event.target.value; applyFilters(); }));
  elements.clear.addEventListener("click", () => {
    Object.assign(state, { query: "", topic: "", year: "", evidence: "", sort: "desc" });
    [elements.search, elements.topic, elements.year, elements.evidence].forEach((element) => { element.value = ""; });
    elements.sort.value = "desc";
    applyFilters();
  });
  elements.pagination.addEventListener("click", (event) => {
    const button = event.target.closest("button[data-page]");
    if (!button || button.disabled) return;
    state.page = Number(button.dataset.page);
    render();
    document.querySelector(".results-meta").scrollIntoView({ behavior: "smooth", block: "start" });
  });
}

function renderTopics(payload) {
  document.querySelector("#topic-summary").innerHTML = Object.entries(payload.topic_counts).slice(0, 8).map(([topic, count], index) => `
    <article><span>TOP ${String(index + 1).padStart(2, "0")}</span><b>${escapeHtml(topic)}</b><i>${escapeHtml(count)} 篇公开论文</i></article>`).join("");
}

function renderRepositories(payload) {
  document.querySelector("#recent-repositories").innerHTML = payload.repositories.filter((repo) => repo.recent).slice(0, 10).map((repo) => `
    <a class="repo-item" href="${escapeHtml(repo.url)}" target="_blank" rel="noreferrer">
      <b>${escapeHtml(repo.name)}</b><time>${escapeHtml(repo.pushed_at.slice(0, 10))}</time>
      <p>${escapeHtml(truncate(repo.description || "公开研究仓库", 150))} · ★ ${escapeHtml(repo.stars)}</p>
    </a>`).join("");
}

function renderProjects(payload) {
  document.querySelector("#project-grid").innerHTML = payload.projects.map((project) => `
    <a class="project-card" href="${escapeHtml(project.url)}" target="_blank" rel="noreferrer">
      <span>PUBLIC PROJECT ↗</span><h3>${escapeHtml(project.name)}</h3><p>${escapeHtml(project.description)}</p>
      <div class="project-tags">${project.tags.map((tag) => `<i>${escapeHtml(tag)}</i>`).join("")}</div>
    </a>`).join("");
}

async function initialize() {
  try {
    const response = await fetch("data/youtu-research.json");
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const payload = await response.json();
    state.papers = payload.papers;
    state.filtered = [...state.papers];
    const topics = [...new Set(state.papers.map((paper) => paper.topic))].sort();
    const years = [...new Set(state.papers.map((paper) => String(paper.year)))].sort((a, b) => b.localeCompare(a));
    const evidence = [...new Map(state.papers.map((paper) => [paper.attribution.kind, paper.attribution.label])).entries()];
    elements.topic.insertAdjacentHTML("beforeend", optionMarkup(topics));
    elements.year.insertAdjacentHTML("beforeend", optionMarkup(years));
    elements.evidence.insertAdjacentHTML("beforeend", evidence.map(([value, label]) => `<option value="${escapeHtml(value)}">${escapeHtml(label)}</option>`).join(""));
    document.querySelector("#hero-paper-total").textContent = payload.counts.papers;
    document.querySelector("#hero-repo-total").textContent = payload.counts.github_repositories;
    document.querySelector("#hero-recent-repo-total").textContent = payload.counts.recent_github_repositories;
    document.querySelector("#hero-abstract-total").textContent = payload.counts.papers_with_arxiv_abstracts;
    document.querySelector("#retrieved-at").textContent = `数据同步时间：${payload.retrieved_at.slice(0, 10)} UTC`;
    renderTopics(payload);
    renderRepositories(payload);
    renderProjects(payload);
    bindControls();
    render();
  } catch (error) {
    elements.count.textContent = "论文目录载入失败";
    elements.list.innerHTML = `<div class="empty-state">暂时无法载入优图研究数据：${escapeHtml(error.message)}</div>`;
  }
}

async function loadKeywordHighlights() {
  try {
    const response = await fetch("data/youtu-keywords.json");
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const payload = await response.json();
    elements.keywordHighlights.innerHTML = payload.keywords.slice(0, 4).map((item, index) => `
      <article>
        <span>TOP ${String(index + 1).padStart(2, "0")}</span>
        <b>${escapeHtml(item.keyword)}</b>
        <i>${escapeHtml(item.document_count)} 篇论文 · ${Math.round(item.document_share * 100)}% 覆盖率</i>
      </article>`).join("");
  } catch (error) {
    elements.keywordHighlights.innerHTML = "<p>关键词摘要暂时无法载入，完整结果仍可在上方图片中查看。</p>";
  }
}

initialize();
loadKeywordHighlights();
