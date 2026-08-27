#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/noirdevs/noir-init.git"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

git clone --depth 1 "$REPO_URL" "$TMP_DIR/noir-init"
cd "$TMP_DIR/noir-init"
exec bash install.sh
