const PAGE_SIZE = 6;

const state = {
  papers: [],
  filtered: [],
  query: "",
  topic: "",
  year: "",
  evidence: "",
  sort: "desc",
  page: 1,
};

const controls = document.querySelector(".browser-controls");
const selects = controls ? [...controls.querySelectorAll("select")] : [];
const elements = {
  search: controls?.querySelector('input[type="search"]'),
  topic: selects[0],
  year: selects[1],
  evidence: selects[2],
  sort: selects[3],
  count: document.querySelector(".results-meta p"),
  clear: document.querySelector(".results-meta button"),
  list: document.querySelector(".paper-list"),
  pagination: document.querySelector(".pagination"),
};

function escapeHtml(value = "") {
  return String(value)
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function formatDate(value) {
  return value ? value.slice(0, 10).replaceAll("-", ".") : "未公开";
}

function formatAuthors(authors = []) {
  if (!authors.length) return "作者列表见原始报告";
  if (authors.length <= 12) return authors.join(", ");
  return `${authors.slice(0, 12).join(", ")} 等 ${authors.length} 位作者`;
}

function optionMarkup(values) {
  return values.map((value) => `<option value="${escapeHtml(value)}">${escapeHtml(value)}</option>`).join("");
}

function paperMarkup(paper, index) {
  const abstract = paper.abstract
    ? escapeHtml(paper.abstract)
    : "该官方报告入口没有提供可抽取的 Abstract；本页不生成伪摘要。";
  const abstractClass = paper.abstract ? "paper-abstract" : "paper-abstract missing";
  return `
    <details class="paper-card">
      <summary class="paper-summary">
        <span class="paper-index">${String(index + 1).padStart(2, "0")}</span>
        <div class="paper-main">
          <div class="paper-badges">
            <span>${escapeHtml(paper.topic)}</span>
            <i>${escapeHtml(paper.attribution.label)}</i>
          </div>
          <h3>${escapeHtml(paper.title)}</h3>
          <p>${escapeHtml(paper.summary)}</p>
        </div>
        <div class="paper-meta">
          <time>${formatDate(paper.publishedAt)}</time>
          <span>${escapeHtml(paper.venue)}</span>
          <small>${escapeHtml(paper.repo)}</small>
        </div>
        <b class="paper-toggle">＋</b>
      </summary>
      <div class="paper-detail">
        <div class="paper-detail-main">
          <div>
            <span class="detail-label">AUTHORS</span>
            <p>${escapeHtml(formatAuthors(paper.authors))}</p>
          </div>
          <div>
            <span class="detail-label">ABSTRACT</span>
            <p class="${abstractClass}">${abstract}</p>
          </div>
        </div>
        <aside>
          <span class="detail-label">ATTRIBUTION</span>
          <b>${escapeHtml(paper.attribution.label)}</b>
          <p>官方仓库 README 明确连接该论文或技术报告。</p>
          <time>核验于 ${escapeHtml(paper.attribution.checkedAt)}</time>
          <div class="paper-actions">
            <a href="${escapeHtml(paper.paperUrl)}" target="_blank" rel="noreferrer">论文 / 报告 ↗</a>
            <a href="${escapeHtml(paper.codeUrl)}" target="_blank" rel="noreferrer">代码仓库 ↗</a>
            <a href="${escapeHtml(paper.attribution.sourceUrl)}" target="_blank" rel="noreferrer">归属证据 ↗</a>
          </div>
        </aside>
      </div>
    </details>`;
}

function renderPagination(pageCount) {
  if (!elements.pagination) return;
  if (pageCount <= 1) {
    elements.pagination.innerHTML = "";
    return;
  }
  const pageButtons = Array.from({ length: pageCount }, (_, index) => {
    const page = index + 1;
    const current = page === state.page;
    return `<button type="button" data-page="${page}" class="${current ? "active" : ""}" ${current ? 'aria-current="page"' : ""}>${page}</button>`;
  }).join("");
  elements.pagination.innerHTML = `
    <button type="button" data-page="${state.page - 1}" ${state.page === 1 ? "disabled" : ""}>← 上一页</button>
    <div>${pageButtons}</div>
    <button type="button" data-page="${state.page + 1}" ${state.page === pageCount ? "disabled" : ""}>下一页 →</button>`;
}

function render() {
  const pageCount = Math.max(1, Math.ceil(state.filtered.length / PAGE_SIZE));
  state.page = Math.min(state.page, pageCount);
  const start = (state.page - 1) * PAGE_SIZE;
  const visible = state.filtered.slice(start, start + PAGE_SIZE);
  elements.count.textContent = `显示 ${state.filtered.length} 篇 · 第 ${state.page} / ${pageCount} 页`;
  elements.list.innerHTML = visible.length
    ? visible.map((paper, index) => paperMarkup(paper, start + index)).join("")
    : '<p class="empty-state">没有符合当前筛选条件的论文。</p>';
  renderPagination(pageCount);
}

function applyFilters() {
  const query = state.query.trim().toLowerCase();
  state.filtered = state.papers.filter((paper) => {
    const haystack = [
      paper.title,
      paper.summary,
      paper.abstract || "",
      ...(paper.authors || []),
      paper.repo,
    ].join(" ").toLowerCase();
    return (!query || haystack.includes(query))
      && (!state.topic || paper.topic === state.topic)
      && (!state.year || paper.publishedAt?.startsWith(state.year))
      && (!state.evidence || paper.attribution.label === state.evidence);
  }).sort((left, right) => {
    const first = left.publishedAt || "";
    const second = right.publishedAt || "";
    return state.sort === "desc" ? second.localeCompare(first) : first.localeCompare(second);
  });
  state.page = 1;
  render();
}

function bindControls() {
  elements.search.addEventListener("input", (event) => {
    state.query = event.target.value;
    applyFilters();
  });
  elements.topic.addEventListener("change", (event) => {
    state.topic = event.target.value;
    applyFilters();
  });
  elements.year.addEventListener("change", (event) => {
    state.year = event.target.value;
    applyFilters();
  });
  elements.evidence.addEventListener("change", (event) => {
    state.evidence = event.target.value;
    applyFilters();
  });
  elements.sort.addEventListener("change", (event) => {
    state.sort = event.target.value;
    applyFilters();
  });
  elements.clear.addEventListener("click", () => {
    state.query = "";
    state.topic = "";
    state.year = "";
    state.evidence = "";
    state.sort = "desc";
    elements.search.value = "";
    elements.topic.value = "";
    elements.year.value = "";
    elements.evidence.value = "";
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
  if (!elements.list || !elements.search || selects.length < 4) return;
  try {
    const response = await fetch("data/hunyuan-research.json");
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    const archive = await response.json();
    state.papers = archive.papers;
    state.filtered = [...state.papers];
    const topics = [...new Set(state.papers.map((paper) => paper.topic))].sort((a, b) => a.localeCompare(b, "zh-CN"));
    const years = [...new Set(state.papers.map((paper) => paper.publishedAt?.slice(0, 4)).filter(Boolean))].sort().reverse();
    const evidence = [...new Set(state.papers.map((paper) => paper.attribution.label))].sort();
    elements.topic.innerHTML = `<option value="">全部方向</option>${optionMarkup(topics)}`;
    elements.year.innerHTML = `<option value="">全部年份</option>${optionMarkup(years)}`;
    elements.evidence.innerHTML = `<option value="">全部证据</option>${optionMarkup(evidence)}`;
    bindControls();
    render();
  } catch (error) {
    elements.count.textContent = "论文目录载入失败";
    elements.list.innerHTML = `<p class="empty-state">暂时无法载入论文数据：${escapeHtml(error.message)}</p>`;
  }
}

initialize();
