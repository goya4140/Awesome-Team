const state = {
  data: null,
  query: "",
  region: "",
  entity: "",
  parent: "",
  focus: "",
  status: "",
  view: "comfortable",
};

const elements = {
  grid: document.querySelector("#team-grid"),
  empty: document.querySelector("#empty-state"),
  resultCount: document.querySelector("#result-count"),
  search: document.querySelector("#search"),
  region: document.querySelector("#region-filter"),
  entity: document.querySelector("#entity-filter"),
  parent: document.querySelector("#parent-filter"),
  focus: document.querySelector("#focus-filter"),
  status: document.querySelector("#status-filter"),
  clear: document.querySelector("#clear-filters"),
  dialog: document.querySelector("#team-dialog"),
  dialogContent: document.querySelector("#dialog-content"),
};

const labels = {
  "CN-mainland": "中国大陆",
  US: "美国",
  HK: "中国香港",
  SG: "新加坡",
  company: "科技公司",
  frontier_ai_company: "前沿 AI 公司",
  university: "高校",
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

function formatSlug(value) {
  return value
    .split("-")
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join(" ");
}

function addOptions(select, values, labeler = (value) => value) {
  values.forEach((value) => {
    const option = document.createElement("option");
    option.value = value;
    option.textContent = labeler(value);
    select.append(option);
  });
}

function updateMetrics(meta) {
  document.querySelector("#hero-team-count").textContent = meta.counts.teams;
  document.querySelector("#parent-count").textContent = meta.counts.parents;
  document.querySelector("#verified-count").textContent = meta.counts.verified;
  document.querySelector("#work-count").textContent = meta.counts.works;
  document.querySelector("#activity-window").textContent = meta.activity_window.replace("/", "—");
  document.querySelector("#last-updated").textContent = meta.last_updated;
}

function setupFilters(data) {
  addOptions(elements.region, [...new Set(data.parents.map((parent) => parent.region))], (value) => labels[value] || value);
  addOptions(elements.entity, [...new Set(data.parents.map((parent) => parent.entity_type))], (value) => labels[value] || value);
  addOptions(
    elements.parent,
    [...data.parents].sort((a, b) => a.name.localeCompare(b.name)),
    (parent) => parent.name
  );
  [...elements.parent.options].slice(1).forEach((option, index) => {
    option.value = [...data.parents].sort((a, b) => a.name.localeCompare(b.name))[index].id;
  });
  const focusValues = [...new Set(data.teams.flatMap((team) => team.focus))].sort();
  addOptions(elements.focus, focusValues, formatSlug);
}

function searchableText(team) {
  return [
    team.name,
    team.parent.name,
    team.team_type,
    ...team.focus,
    ...team.representative_works.map((work) => work.title),
  ].join(" ").toLowerCase();
}

function filteredTeams() {
  const query = state.query.trim().toLowerCase();
  return state.data.teams.filter((team) => {
    if (query && !searchableText(team).includes(query)) return false;
    if (state.region && team.parent.region !== state.region) return false;
    if (state.entity && team.parent.entity_type !== state.entity) return false;
    if (state.parent && team.parent_id !== state.parent) return false;
    if (state.focus && !team.focus.includes(state.focus)) return false;
    if (state.status && team.status !== state.status) return false;
    return true;
  });
}

function workMarkup(work, index) {
  return `
    <li>
      <a href="${escapeHtml(work.url)}" target="_blank" rel="noreferrer">
        <span class="work-index">${String(index + 1).padStart(2, "0")}</span>
        <span class="work-title">${escapeHtml(work.title)}</span>
        <span class="work-arrow">↗</span>
      </a>
    </li>`;
}

function teamCard(team) {
  return `
    <article class="team-card">
      <div class="team-card-head">
        <div>
          <p class="team-parent">${escapeHtml(team.parent.name)}</p>
          <h3>${escapeHtml(team.name)}</h3>
        </div>
        <span class="status-dot ${escapeHtml(team.status)}" title="${labels[team.status]}"></span>
      </div>
      <div class="focus-list">
        ${team.focus.slice(0, 4).map((focus) => `<span class="tag">${escapeHtml(formatSlug(focus))}</span>`).join("")}
      </div>
      <ol class="works">
        ${team.representative_works.map(workMarkup).join("")}
      </ol>
      <div class="card-footer">
        <small>${labels[team.parent.region] || team.parent.region} · ${labels[team.status]}</small>
        <button class="detail-button" type="button" data-team="${escapeHtml(team.id)}">查看详情</button>
      </div>
    </article>`;
}

function render() {
  const teams = filteredTeams();
  elements.resultCount.textContent = teams.length;
  elements.empty.hidden = teams.length !== 0;
  elements.grid.hidden = teams.length === 0;
  elements.grid.classList.toggle("compact", state.view === "compact");
  elements.grid.innerHTML = teams.map(teamCard).join("");
}

function openTeam(teamId) {
  const team = state.data.teams.find((item) => item.id === teamId);
  if (!team) return;
  const homepageLinks = team.homepages
    .map((page) => `<a href="${escapeHtml(page.url)}" target="_blank" rel="noreferrer">${page.kind === "github" ? "GitHub" : "官方网站"} ↗</a>`)
    .join("");
  const evidenceLinks = [...new Set([
    ...(team.evidence.affiliation || []),
    ...(team.evidence.recent_activity || []),
  ])]
    .map((url, index) => `<a href="${escapeHtml(url)}" target="_blank" rel="noreferrer">证据 ${index + 1} ↗</a>`)
    .join("");

  elements.dialogContent.innerHTML = `
    <div class="dialog-body">
      <p class="team-parent">${escapeHtml(team.parent.name)} · ${labels[team.parent.region] || team.parent.region}</p>
      <h2>${escapeHtml(team.name)}</h2>
      <p class="dialog-meta">${formatSlug(team.team_type)} · ${labels[team.status]}<br>
        ${team.notes ? escapeHtml(team.notes) : "已收录官方归属与近期公开研究活动证据。"}
      </p>
      <div class="focus-list">
        ${team.focus.map((focus) => `<span class="tag">${escapeHtml(formatSlug(focus))}</span>`).join("")}
      </div>
      <section class="dialog-section">
        <h3>代表论文与研究成果</h3>
        <div class="dialog-works">
          ${team.representative_works.map((work) => `
            <a class="dialog-work" href="${escapeHtml(work.url)}" target="_blank" rel="noreferrer">
              <span><strong>${escapeHtml(work.title)}</strong><small class="work-kind">${labels[work.kind] || formatSlug(work.kind)}</small></span>
              <span>↗</span>
            </a>`).join("")}
        </div>
      </section>
      <section class="dialog-section">
        <h3>官方入口</h3>
        <div class="link-row">${homepageLinks}</div>
      </section>
      <section class="dialog-section">
        <h3>收录证据</h3>
        <div class="link-row">${evidenceLinks}</div>
      </section>
    </div>`;
  elements.dialog.showModal();
}

function bindEvents() {
  let timer;
  elements.search.addEventListener("input", (event) => {
    clearTimeout(timer);
    timer = setTimeout(() => {
      state.query = event.target.value;
      render();
    }, 80);
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
  elements.clear.addEventListener("click", () => {
    state.query = "";
    state.region = "";
    state.entity = "";
    state.parent = "";
    state.focus = "";
    state.status = "";
    elements.search.value = "";
    [elements.region, elements.entity, elements.parent, elements.focus, elements.status].forEach((select) => {
      select.value = "";
    });
    render();
  });
  elements.grid.addEventListener("click", (event) => {
    const button = event.target.closest("[data-team]");
    if (button) openTeam(button.dataset.team);
  });
  document.querySelectorAll("[data-view]").forEach((button) => {
    button.addEventListener("click", () => {
      state.view = button.dataset.view;
      document.querySelectorAll("[data-view]").forEach((item) => item.classList.toggle("active", item === button));
      render();
    });
  });
  document.querySelector(".dialog-close").addEventListener("click", () => elements.dialog.close());
  elements.dialog.addEventListener("click", (event) => {
    if (event.target === elements.dialog) elements.dialog.close();
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
    updateMetrics(state.data.meta);
    setupFilters(state.data);
    bindEvents();
    render();
  } catch (error) {
    elements.grid.innerHTML = `<p>目录数据加载失败：${escapeHtml(error.message)}</p>`;
  }
}

init();
