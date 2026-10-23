#!/bin/sh
set -eu

root=$(cd "$(dirname "$0")/.." && pwd)
stage=$(mktemp -d)
trap 'rm -rf "$stage"' EXIT

cp "$root/openai/plugin.json" "$stage/plugin.json"
cp "$root/openai/mcp.json" "$stage/mcp.json"
cp -R "$root/skills" "$stage/skills"
cp -R "$root/assets" "$stage/assets"
cp "$root/README.md" "$root/LICENSE" "$stage/"

mkdir -p "$root/dist"
out="$root/dist/mcanalytics-chatgpt-plugin.zip"
rm -f "$out"
if command -v zip >/dev/null 2>&1; then
  (cd "$stage" && zip -qr "$out" .)
else
  (cd "$stage" && tar -a -cf "$out" ./*)
fi
echo "wrote $out"
