#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
FORMULA_DIR="$REPO_ROOT/Formula"

for formula in "$FORMULA_DIR"/*.rb; do
  name="$(basename "$formula" .rb)"

  # Extract current url and sha256
  current_url="$(grep '^\s*url ' "$formula" | sed 's/.*"\(.*\)".*/\1/')"
  current_sha="$(grep '^\s*sha256 ' "$formula" | sed 's/.*"\(.*\)".*/\1/')"

  # Derive owner/repo and current tag from the url
  # Pattern: https://github.com/{owner}/{repo}/archive/refs/tags/{tag}.tar.gz
  owner_repo="$(echo "$current_url" | sed 's|https://github.com/\([^/]*/[^/]*\)/archive/.*|\1|')"
  current_tag="$(echo "$current_url" | sed 's|.*/refs/tags/\(.*\)\.tar\.gz|\1|')"

  # Fetch latest tag via gh api (avoids /releases/latest unreliability)
  latest_tag="$(gh api "repos/$owner_repo/tags" --jq '.[0].name')"

  if [ "$current_tag" = "$latest_tag" ]; then
    echo "$name: already at $current_tag"
    continue
  fi

  echo "$name: updating $current_tag -> $latest_tag"

  # Build new URL and compute sha256
  new_url="https://github.com/$owner_repo/archive/refs/tags/$latest_tag.tar.gz"
  new_sha="$(curl -sL "$new_url" | shasum -a 256 | awk '{print $1}')"

  # Update formula in-place (portable: write to temp + mv)
  tmp="$(mktemp)"
  sed "s|$current_url|$new_url|; s|$current_sha|$new_sha|" "$formula" > "$tmp"
  mv "$tmp" "$formula"

  echo "$name: updated (sha256: $new_sha)"
done
