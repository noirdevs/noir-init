#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
NOIR_HOME="${HOME}/.noir"
NOIR_BIN="${NOIR_HOME}/bin"
NOIR_SKILLS="${NOIR_HOME}/skills"
NOIR_TEMPLATES="${NOIR_HOME}/templates"

[[ -f "$ROOT/noir/bin/noir-init" ]] || { echo "ERROR: missing noir/bin/noir-init" >&2; exit 1; }
[[ -d "$ROOT/noir/skills" ]] || { echo "ERROR: missing noir/skills" >&2; exit 1; }
[[ -d "$ROOT/noir/templates" ]] || { echo "ERROR: missing noir/templates" >&2; exit 1; }

bash -n "$ROOT/noir/bin/noir-init"
rm -rf "$NOIR_HOME"
rm -f "$HOME/.local/bin/noir-init"
mkdir -p "$NOIR_BIN" "$NOIR_SKILLS" "$NOIR_TEMPLATES"
install -m 0755 "$ROOT/noir/bin/noir-init" "$NOIR_BIN/noir-init"
cp -a "$ROOT/noir/skills/." "$NOIR_SKILLS/"
cp -a "$ROOT/noir/templates/." "$NOIR_TEMPLATES/"

case "${SHELL##*/}" in
  zsh) rc="$HOME/.zshrc"; line='export PATH="$HOME/.noir/bin:$PATH"' ;;
  fish) rc="$HOME/.config/fish/config.fish"; mkdir -p "$(dirname "$rc")"; line='fish_add_path "$HOME/.noir/bin"' ;;
  *) rc="$HOME/.bashrc"; line='export PATH="$HOME/.noir/bin:$PATH"' ;;
esac
[[ -f "$rc" ]] || touch "$rc"
grep -Fqx "$line" "$rc" || printf '\n%s\n' "$line" >> "$rc"
export PATH="$HOME/.noir/bin:$PATH"
"$NOIR_BIN/noir-init" --version

echo "Noir Init installed to ~/.noir"
echo "Binary: ~/.noir/bin/noir-init"
echo "Skills: ~/.noir/skills"
echo "Templates: ~/.noir/templates"
echo "Project skill execution surface: .claude/skills"
