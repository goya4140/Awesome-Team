const DATA_URL = "data/qwen-research.json?v=20260731-v1";
const PAGE_SIZE = 6;

const state = {
  data: null,
  query: "",
  topic: "",
  year: "",
  evidence: "",
  sort: "recent",
  visible: PAGE_SIZE,
};

const elements = {
  directions: document.querySelector("#direction-grid"),
  activities: document.querySelector("#activity-list"),
  keywords: document.querySelector("#keyword-bars"),
  projects: document.querySelector("#project-grid"),
  sources: document.querySelector("#source-grid"),
  paperList: document.querySelector("#paper-list"),
  paperEmpty: document.querySelector("#paper-empty"),
  paperCount: document.querySelector("#paper-count"),
  loadMore: document.querySelector("#load-more"),
  search: document.querySelector("#paper-search"),
  topic: document.querySelector("#paper-topic"),
  year: document.querySelector("#paper-year"),
  evidence: document.querySelector("#paper-evidence"),
  sort: document.querySelector("#paper-sort"),
  reset: document.querySelector("#paper-reset"),
};

function escapeHtml(value = "") {
  return String(value)
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function externalLink(url, label) {
  if (!url) return "";
  return `<a href="${escapeHtml(url)}" target="_blank" rel="noreferrer">${escapeHtml(label)} ↗</a>`;
}

function addOptions(select, values, label = (value) => value) {
  values.forEach((value) => {
    const option = document.createElement("option");
    option.value = value;
    option.textContent = label(value);
    select.append(option);
  });
}

function setupSummary(data) {
  const { team, stats } = data;
  document.querySelector("#hero-positioning").textContent = team.positioning;
  document.querySelector("#team-boundary").textContent = team.boundary;
  document.querySelector("#stat-research").textContent = stats.officialResearchEntries;
  document.querySelector("#stat-repositories").textContent = stats.publicRepositories;
  document.querySelector("#stat-active").textContent = stats.activeRepositories90Days;
  document.querySelector("#stat-publications").textContent = stats.publications;
  document.querySelector("#activity-window").textContent = `${team.activityWindowStart}—${team.checkedAt}`;
  document.querySelector("#checked-at").textContent = team.checkedAt;
  document.querySelector("#abstract-count").textContent = stats.papersWithAbstracts;
  document.querySelector("#keyword-denominator").textContent = `${stats.papersWithAbstracts} ABSTRACTS`;
}

function renderDirections(directions) {
  elements.directions.innerHTML = directions.map((direction, index) => `
    <article class="direction-card">
      <span>${String(index + 1).padStart(2, "0")}</span>
      <small>${escapeHtml(direction.name)}</small>
      <h3>${escapeHtml(direction.label)}</h3>
      <p>${escapeHtml(direction.description)}</p>
    </article>
  `).join("");
}

function renderActivities(activities) {
  elements.activities.innerHTML = activities.map((item) => `
    <a class="activity-item" href="${escapeHtml(item.url)}" target="_blank" rel="noreferrer">
      <time datetime="${escapeHtml(item.date)}">${escapeHtml(item.date.replaceAll("-", "."))}</time>
      <span>${escapeHtml(item.type)}</span>
      <div>
        <strong>${escapeHtml(item.title)}</strong>
        <small>${escapeHtml(item.description)}</small>
      </div>
      <b aria-hidden="true">↗</b>
    </a>
  `).join("");
}

function renderKeywords(data) {
  const denominator = data.stats.papersWithAbstracts;
  const maxCount = Math.max(...data.keywords.map((item) => item.papers), 1);
  elements.keywords.innerHTML = data.keywords.map((item) => {
    const share = Math.round((item.papers / denominator) * 100);
    const width = Math.round((item.papers / maxCount) * 100);
    return `
      <article class="keyword-row">
        <span>${escapeHtml(item.label)}</span>
        <div class="keyword-track" aria-label="${escapeHtml(item.label)}覆盖 ${item.papers} 篇论文，占 ${share}%">
          <i style="width:${width}%"></i>
        </div>
        <strong>${item.papers} · ${share}%</strong>
      </article>
    `;
  }).join("");
}

function renderProjects(projects) {
  elements.projects.innerHTML = projects.map((project, index) => `
    <a class="project-card" href="${escapeHtml(project.url)}" target="_blank" rel="noreferrer">
      <div class="project-topline">
        <span>${String(index + 1).padStart(2, "0")} / ${escapeHtml(project.kind)}</span>
        <b aria-hidden="true">↗</b>
      </div>
      <h3>${escapeHtml(project.name)}</h3>
      <p>${escapeHtml(project.description)}</p>
      <small>${escapeHtml(project.signal)}</small>
    </a>
  `).join("");
}

function renderSources(sources) {
  elements.sources.innerHTML = sources.map((source) => `
    <a class="source-card" href="${escapeHtml(source.url)}" target="_blank" rel="noreferrer">
      <span>${escapeHtml(source.kind)}</span>
      <h3>${escapeHtml(source.name)} ↗</h3>
      <p>${escapeHtml(source.supports)}</p>
      <small>${escapeHtml(source.limitations)}</small>
    </a>
  `).join("");
}

function searchableText(paper) {
  return [
    paper.title,
    paper.abstract,
    paper.topic,
    paper.venue,
    ...paper.authors,
  ].filter(Boolean).join(" ").toLowerCase();
}

function filteredPapers() {
  const query = state.query.trim().toLowerCase();
  const filtered = state.data.publications.filter((paper) => {
    if (query && !searchableText(paper).includes(query)) return false;
    if (state.topic && paper.topic !== state.topic) return false;
    if (state.year && String(paper.year) !== state.year) return false;
    if (state.evidence && paper.attribution.kind !== state.evidence) return false;
    return true;
  });

  return filtered.sort((a, b) => {
    if (state.sort === "oldest") return a.publishedAt.localeCompare(b.publishedAt);
    if (state.sort === "title") return a.title.localeCompare(b.title);
    return b.publishedAt.localeCompare(a.publishedAt);
  });
}

function paperMarkup(paper, index) {
  const abstract = paper.abstract
    ? escapeHtml(paper.abstract)
    : "暂无可核验 Abstract；本页不生成伪摘要。";
  return `
    <article class="paper-card">
      <span class="paper-index">${String(index + 1).padStart(2, "0")}</span>
      <div>
        <div class="paper-meta">
          <span>${escapeHtml(paper.topic)}</span>
          <span>${escapeHtml(paper.publishedAt)}</span>
          <span>${escapeHtml(paper.venue)}</span>
        </div>
        <h3>${escapeHtml(paper.title)}</h3>
        <p class="paper-authors">${escapeHtml(paper.authors.join(", "))}</p>
        <details>
          <summary>展开 Abstract</summary>
          <p>${abstract}</p>
        </details>
      </div>
      <div class="paper-actions">
        <span class="evidence-chip">${escapeHtml(paper.attribution.label)}</span>
        ${externalLink(paper.paperUrl, "PAPER")}
        ${externalLink(paper.codeUrl, "CODE")}
        ${externalLink(paper.attribution.sourceUrl, "EVIDENCE")}
      </div>
    </article>
  `;
}

function renderPapers() {
  const papers = filteredPapers();
  elements.paperCount.textContent = papers.length;
  elements.paperList.innerHTML = papers.slice(0, state.visible).map(paperMarkup).join("");
  elements.paperEmpty.hidden = papers.length !== 0;
  elements.loadMore.hidden = state.visible >= papers.length;
  elements.loadMore.textContent = `加载更多 · 还剩 ${Math.max(papers.length - state.visible, 0)} 篇`;
}

function resetVisible() {
  state.visible = PAGE_SIZE;
  renderPapers();
}

function setupFilters(publications) {
  addOptions(elements.topic, [...new Set(publications.map((paper) => paper.topic))].sort());
  addOptions(
    elements.year,
    [...new Set(publications.map((paper) => String(paper.year)))].sort((a, b) => b.localeCompare(a)),
  );

  const evidenceLabels = new Map(
    publications.map((paper) => [paper.attribution.kind, paper.attribution.label]),
  );
  addOptions(elements.evidence, [...evidenceLabels.keys()].sort(), (value) => evidenceLabels.get(value));

  elements.search.addEventListener("input", (event) => {
    state.query = event.target.value;
    resetVisible();
  });
  elements.topic.addEventListener("change", (event) => {
    state.topic = event.target.value;
    resetVisible();
  });
  elements.year.addEventListener("change", (event) => {
    state.year = event.target.value;
    resetVisible();
  });
  elements.evidence.addEventListener("change", (event) => {
    state.evidence = event.target.value;
    resetVisible();
  });
  elements.sort.addEventListener("change", (event) => {
    state.sort = event.target.value;
    resetVisible();
  });
  elements.reset.addEventListener("click", () => {
    window.setTimeout(() => {
      state.query = "";
      state.topic = "";
      state.year = "";
      state.evidence = "";
      state.sort = "recent";
      resetVisible();
    }, 0);
  });
  elements.loadMore.addEventListener("click", () => {
    state.visible += PAGE_SIZE;
    renderPapers();
  });
}

async function init() {
  const response = await fetch(DATA_URL);
  if (!response.ok) throw new Error(`Unable to load Qwen research data: ${response.status}`);
  const data = await response.json();
  state.data = data;
  setupSummary(data);
  renderDirections(data.directions);
  renderActivities(data.activity);
  renderKeywords(data);
  renderProjects(data.projects);
  renderSources(data.sources);
  setupFilters(data.publications);
  renderPapers();
}

init().catch((error) => {
  console.error(error);
  elements.paperEmpty.hidden = false;
  elements.paperEmpty.textContent = "研究数据暂时无法加载，请稍后重试。";
});
