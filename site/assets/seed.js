const PAGE_SIZE = 12;

const state = {
  papers: [],
  filtered: [],
  page: 1,
  query: "",
  team: "",
  year: "",
  sort: "desc",
};

const elements = {
  search: document.querySelector("#paper-search"),
  team: document.querySelector("#team-filter"),
  year: document.querySelector("#year-filter"),
  sort: document.querySelector("#sort-filter"),
  clear: document.querySelector("#clear-filters"),
  count: document.querySelector("#results-count"),
  list: document.querySelector("#paper-list"),
  pagination: document.querySelector("#pagination"),
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

function signalMapMarkup(paper) {
  const rows = paper.abstract_signals.map((signal, index) => {
    const width = Math.max(42, 94 - index * 15);
    return `
      <div class="signal-row">
        <b title="${escapeHtml(signal)}">${escapeHtml(signal)}</b>
        <i style="width:${width}%;--signal-index:${index}" aria-hidden="true"></i>
      </div>`;
  }).join("");
  return `
    <div class="signal-map" role="img" aria-label="${escapeHtml(paper.title)} 摘要信号图">
      <span>ABSTRACT-DERIVED SIGNAL MAP</span>
      <div class="signal-bars">${rows}</div>
    </div>`;
}

function figureMarkup(paper) {
  const figure = paper.figure;
  const visual = figure.image_url
    ? `<img src="${escapeHtml(figure.image_url)}" alt="${escapeHtml(paper.title)} 核心图表" loading="lazy">`
    : signalMapMarkup(paper);
  const label = figure.kind === "paper-figure"
    ? "CORE FIGURE · PAPER HTML"
    : figure.kind === "pdf-page"
      ? "CORE FIGURE · PDF PREVIEW"
      : "CORE FIGURE · ABSTRACT MAP";
  return `
    <figure class="paper-figure">
      <a class="figure-stage" href="${escapeHtml(figure.source_url)}" target="_blank" rel="noreferrer">
        ${visual}
      </a>
      <figcaption><b>${label}</b><br>${escapeHtml(figure.caption)}</figcaption>
    </figure>`;
}

function paperMarkup(paper, absoluteIndex) {
  const tags = [
    paper.published_at,
    ...(paper.teams || []),
    ...(paper.areas || []).slice(0, 1),
    paper.venue,
  ].filter(Boolean);
  const arxivLink = paper.arxiv_url
    ? `<a href="${escapeHtml(paper.arxiv_url)}" target="_blank" rel="noreferrer">ARXIV ↗</a>`
    : `<a href="${escapeHtml(paper.arxiv_search_url)}" target="_blank" rel="noreferrer">ARXIV 标题检索 ↗</a>`;
  const external = (paper.external_links || [])[0];
  return `
    <details class="paper-card">
      <summary class="paper-summary">
        <span class="paper-index">${String(absoluteIndex + 1).padStart(3, "0")}</span>
        <div class="paper-title">
          <h3>${escapeHtml(paper.title)}</h3>
          <p>${escapeHtml(truncate(paper.authors, 210))}</p>
        </div>
        <div class="paper-quick-meta">
          ${tags.map((tag) => `<span>${escapeHtml(tag)}</span>`).join("")}
        </div>
        <span class="paper-toggle" aria-hidden="true">+</span>
      </summary>
      <div class="paper-detail">
        <div class="paper-text-block">
          <p class="detail-label">TL;DR · EXTRACTIVE</p>
          <p class="paper-tldr">${escapeHtml(paper.tldr)}</p>
          <div class="abstract-block">
            <p class="detail-label">ABSTRACT</p>
            <p class="paper-abstract">${escapeHtml(paper.abstract)}</p>
          </div>
          <div class="authors-block">
            <p class="detail-label">AUTHORS</p>
            <p>${escapeHtml(paper.authors || "官方条目未列出作者")}</p>
          </div>
          <div class="paper-links">
            <a href="${escapeHtml(paper.official_url)}" target="_blank" rel="noreferrer">SEED 官方详情 ↗</a>
            ${arxivLink}
            ${external ? `<a href="${escapeHtml(external)}" target="_blank" rel="noreferrer">论文原始入口 ↗</a>` : ""}
          </div>
        </div>
        ${figureMarkup(paper)}
      </div>
    </details>`;
}

function renderPagination() {
  const pages = Math.max(1, Math.ceil(state.filtered.length / PAGE_SIZE));
  const current = Math.min(state.page, pages);
  const windowStart = Math.max(1, Math.min(current - 2, pages - 4));
  const windowEnd = Math.min(pages, windowStart + 4);
  const buttons = [];
  buttons.push(`<button type="button" data-page="${current - 1}" ${current === 1 ? "disabled" : ""}>上一页</button>`);
  for (let page = windowStart; page <= windowEnd; page += 1) {
    buttons.push(`<button type="button" data-page="${page}" ${page === current ? 'aria-current="page"' : ""}>${page}</button>`);
  }
  buttons.push(`<button type="button" data-page="${current + 1}" ${current === pages ? "disabled" : ""}>下一页</button>`);
  elements.pagination.innerHTML = buttons.join("");
}

function render() {
  const start = (state.page - 1) * PAGE_SIZE;
  const pagePapers = state.filtered.slice(start, start + PAGE_SIZE);
  elements.count.textContent = `共 ${state.filtered.length} 篇 · 第 ${state.page} / ${Math.max(1, Math.ceil(state.filtered.length / PAGE_SIZE))} 页`;
  elements.list.innerHTML = pagePapers.length
    ? pagePapers.map((paper, index) => paperMarkup(paper, start + index)).join("")
    : '<div class="empty-state">没有符合当前筛选条件的论文。</div>';
  renderPagination();
}

function applyFilters() {
  const query = state.query.trim().toLowerCase();
  state.filtered = state.papers.filter((paper) => {
    const haystack = [
      paper.title,
      paper.authors,
      paper.abstract,
      paper.venue,
      ...(paper.teams || []),
      ...(paper.areas || []),
    ].join(" ").toLowerCase();
    return (!query || haystack.includes(query))
      && (!state.team || (paper.teams || []).includes(state.team))
      && (!state.year || String(paper.year) === state.year);
  }).sort((left, right) => {
    const direction = state.sort === "asc" ? 1 : -1;
    return left.published_at.localeCompare(right.published_at) * direction;
  });
  state.page = 1;
  render();
}

function bindControls() {
  elements.search.addEventListener("input", (event) => {
    state.query = event.target.value;
    applyFilters();
  });
  elements.team.addEventListener("change", (event) => {
    state.team = event.target.value;
    applyFilters();
  });
  elements.year.addEventListener("change", (event) => {
    state.year = event.target.value;
    applyFilters();
  });
  elements.sort.addEventListener("change", (event) => {
    state.sort = event.target.value;
    applyFilters();
  });
  elements.clear.addEventListener("click", () => {
    state.query = "";
    state.team = "";
    state.year = "";
    state.sort = "desc";
    elements.search.value = "";
    elements.team.value = "";
    elements.year.value = "";
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

async function initialize() {
  try {
    const response = await fetch("data/seed-papers.json");
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const payload = await response.json();
    state.papers = payload.papers;
    const teams = [...new Set(state.papers.flatMap((paper) => paper.teams || []))].sort();
    const years = [...new Set(state.papers.map((paper) => String(paper.year)))].sort((a, b) => b.localeCompare(a));
    elements.team.insertAdjacentHTML("beforeend", optionMarkup(teams));
    elements.year.insertAdjacentHTML("beforeend", optionMarkup(years));
    document.querySelector("#hero-reported-total").textContent = payload.reported_total;
    document.querySelector("#hero-retrieved-total").textContent = payload.retrieved_count;
    document.querySelector("#hero-arxiv-total").textContent = payload.direct_arxiv_count;
    document.querySelector("#hero-figure-total").textContent = payload.paper_figure_count + payload.pdf_preview_count;
    document.querySelector("#retrieved-at").textContent = `数据同步时间：${payload.retrieved_at.slice(0, 10)} UTC`;
    state.filtered = [...state.papers];
    bindControls();
    render();
  } catch (error) {
    elements.count.textContent = "论文目录载入失败";
    elements.list.innerHTML = `<div class="empty-state">暂时无法载入论文数据：${escapeHtml(error.message)}</div>`;
  }
}

initialize();
