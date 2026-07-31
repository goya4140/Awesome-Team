import assert from "node:assert/strict";
import { readFile } from "node:fs/promises";

const root = new URL("../", import.meta.url);
const research = JSON.parse(await readFile(new URL("data/qwen-research.json", root)));
const keywordData = JSON.parse(await readFile(new URL("data/qwen-keywords.json", root)));

assert.equal(research.team.name, "Qwen Team");
assert.match(research.team.checkedAt, /^\d{4}-\d{2}-\d{2}$/);
assert.equal(research.designReference.primaryUrl, "https://qwen.ai/research");
assert.equal(research.designReference.theme.primaryColor, "#0a28f0");
assert.ok(research.directions.length >= 5 && research.directions.length <= 8);
assert.equal(research.stats.publications, research.publications.length);
assert.equal(
  research.stats.papersWithAbstracts,
  research.publications.filter((paper) => Boolean(paper.abstract)).length,
);
assert.equal(keywordData.paper_count, research.stats.papersWithAbstracts);
assert.equal(keywordData.working_set_count, research.stats.publications);

const paperIds = new Set();
for (const paper of research.publications) {
  assert.ok(paper.id && !paperIds.has(paper.id), `duplicate paper id: ${paper.id}`);
  paperIds.add(paper.id);
  assert.match(paper.publishedAt, /^\d{4}-\d{2}-\d{2}$/);
  assert.ok(Array.isArray(paper.authors) && paper.authors.length > 0);
  assert.ok(paper.paperUrl.startsWith("https://"));
  assert.ok(paper.attribution.kind);
  assert.ok(paper.attribution.label);
  assert.ok(paper.attribution.sourceUrl.startsWith("https://"));
}

for (const item of research.keywords) {
  assert.ok(item.papers > 0 && item.papers <= research.stats.papersWithAbstracts);
}

for (const project of research.projects) {
  assert.ok(project.url.startsWith("https://"));
}

console.log(
  `OK: ${research.publications.length} Qwen papers, ` +
  `${research.stats.papersWithAbstracts} abstracts, ` +
  `${research.projects.length} projects, ${research.sources.length} sources`,
);
