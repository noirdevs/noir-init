# Noir Init 0.17.6

## Fix: project-targeted permanent skill bootstrap

- `noir-init new <project>` creates the 8 permanent skill symlinks directly under `<project>/.claude/skills/`.
- Project `.noir/` remains state/control-plane only.
- `.noir/skills/` is never created or managed.
- `stack sync` preserves the 8 permanent `noir-*` skills and reconciles only stack-derived skills.
- The release is distributed as a direct source tree; no release archive is required.
