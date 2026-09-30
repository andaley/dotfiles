#!/bin/bash
set -euo pipefail

if [[ "$(uname -s)" != Darwin || "$(uname -m)" != arm64 ]]; then
  printf 'This setup requires an Apple Silicon Mac.\n' >&2
  exit 1
fi

if ! command -v brew >/dev/null 2>&1; then
  printf 'Install Homebrew first: https://brew.sh\n' >&2
  exit 1
fi

if ! command -v mise >/dev/null 2>&1; then
  brew install mise
fi

repo_dir="$(dirname -- "${BASH_SOURCE[0]}")"
mise trust "$repo_dir/mise.toml"
exec mise -C "$repo_dir" run setup
