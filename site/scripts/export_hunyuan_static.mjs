import { readFileSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const renderedPath = process.argv[2];
if (!renderedPath) {
  throw new Error("Usage: node site/scripts/export_hunyuan_static.mjs <rendered-html>");
}

const projectRoot = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const rendered = readFileSync(resolve(renderedPath), "utf8");
const mainMatch = rendered.match(/<main id="top">[\s\S]*?<\/main>/);

if (!mainMatch) {
  throw new Error("Could not find the Hunyuan page <main> element.");
}

const main = mainMatch[0]
  .replaceAll('src="/hunyuan-logo.webp"', 'src="assets/team-logos/tencent-hunyuan.webp"')
  .replaceAll('href="https://goya4140.github.io/awesome-team/"', 'href="index.html"');

const html = `<!doctype html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="腾讯混元公开研究档案：团队画像、活跃信号、公开人物、项目与 2024—2026 论文工作集。">
    <meta name="theme-color" content="#00c878">
    <meta property="og:title" content="Tencent Hunyuan · 公开研究档案">
    <meta property="og:description" content="从官方仓库、技术报告与公开人物主页重建腾讯混元的可核验研究档案。">
    <meta property="og:type" content="website">
    <meta property="og:url" content="https://goya4140.github.io/Awesome-Team/hunyuan.html">
    <meta property="og:image" content="https://goya4140.github.io/Awesome-Team/assets/hunyuan-og.png">
    <meta name="twitter:card" content="summary_large_image">
    <title>Tencent Hunyuan · 公开研究档案｜Awesome Team</title>
    <link rel="stylesheet" href="assets/hunyuan.css?v=20260731-v1">
    <script defer src="assets/hunyuan.js?v=20260731-v1"></script>
  </head>
  <body>
    ${main}
  </body>
</html>
`;

writeFileSync(resolve(projectRoot, "hunyuan.html"), html);
