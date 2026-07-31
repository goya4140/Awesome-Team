import { mkdirSync, readFileSync, readdirSync, rmSync, statSync, writeFileSync } from "node:fs";
import { dirname, extname, join, relative, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const projectRoot = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const outputRoot = join(projectRoot, "dist");
const sourceRoots = ["index.html", "seed.html", "youtu.html", "assets", "data"];

const contentTypes = {
  ".css": "text/css; charset=utf-8",
  ".html": "text/html; charset=utf-8",
  ".jpeg": "image/jpeg",
  ".jpg": "image/jpeg",
  ".js": "text/javascript; charset=utf-8",
  ".json": "application/json; charset=utf-8",
  ".png": "image/png",
  ".webp": "image/webp",
};

function collect(path) {
  const stats = statSync(path);
  if (stats.isFile()) return [path];
  return readdirSync(path).flatMap((name) => collect(join(path, name)));
}

const files = sourceRoots
  .flatMap((entry) => collect(join(projectRoot, entry)))
  .filter((path) => !path.includes(`${join("assets", "team-logos")}${join("/")}.DS_Store`))
  .sort();

const manifest = files.map((path) => {
  const pathname = `/${relative(projectRoot, path).split("\\").join("/")}`;
  const type = contentTypes[extname(path).toLowerCase()] || "application/octet-stream";
  const body = readFileSync(path).toString("base64");
  return [pathname, { type, body }];
});

const worker = `const files = new Map(${JSON.stringify(manifest)});

function decode(base64) {
  const binary = atob(base64);
  const bytes = new Uint8Array(binary.length);
  for (let index = 0; index < binary.length; index += 1) bytes[index] = binary.charCodeAt(index);
  return bytes;
}

export default {
  async fetch(request) {
    const url = new URL(request.url);
    let pathname = decodeURIComponent(url.pathname);
    if (pathname === "/") pathname = "/index.html";
    if (pathname === "/seed") pathname = "/seed.html";
    if (pathname === "/youtu") pathname = "/youtu.html";
    const file = files.get(pathname);
    if (!file) return new Response("Not found", { status: 404 });
    const headers = new Headers({
      "content-type": file.type,
      "cache-control": pathname.endsWith(".html") || pathname.endsWith(".json")
        ? "public, max-age=0, must-revalidate"
        : "public, max-age=31536000, immutable",
      "x-content-type-options": "nosniff",
    });
    if (request.method === "HEAD") return new Response(null, { status: 200, headers });
    return new Response(decode(file.body), { status: 200, headers });
  },
};
`;

rmSync(outputRoot, { recursive: true, force: true });
mkdirSync(join(outputRoot, "server"), { recursive: true });
writeFileSync(join(outputRoot, "server", "index.js"), worker);
