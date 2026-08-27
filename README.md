# Noir Init 0.17.6

Patch release focused on project skill bootstrap and clean release packaging.

- `~/.noir/bin/noir-init` is the only installed executable location.
- `~/.noir/skills/` is the global skill registry.
- `~/.noir/templates/` stores templates.
- Project `.noir/` is state/control-plane only.
- Project `.claude/skills/` is the skill execution surface.
- Eight permanent Noir skills are always bootstrapped and preserved by stack reconciliation.
