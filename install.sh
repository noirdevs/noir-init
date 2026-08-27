#!/usr/bin/env bash
set -euo pipefail

VERSION="0.17.6"
BASE_URL="https://raw.githubusercontent.com/noirdevs/noir-init/main/bundle"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

ARCHIVE="$TMP_DIR/noir-init-$VERSION.zip"

echo "Installing Noir Init $VERSION..."

command -v curl >/dev/null 2>&1 || { echo "ERROR: curl is required." >&2; exit 1; }
command -v unzip >/dev/null 2>&1 || { echo "ERROR: unzip is required." >&2; exit 1; }

curl -fsSL "$BASE_URL/noir-init-$VERSION.zip" -o "$ARCHIVE"
unzip -q "$ARCHIVE" -d "$TMP_DIR/unpacked"

BUNDLE="$TMP_DIR/unpacked/noir-init-$VERSION"
[[ -d "$BUNDLE" ]] || { echo "ERROR: invalid Noir Init bundle." >&2; exit 1; }

exec bash "$BUNDLE/install.sh"
