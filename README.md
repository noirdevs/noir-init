# Noir Init

Noir Init 0.17.6.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/noirdevs/noir-init/main/run.sh | bash
```

`run.sh` clones this repository and runs `install.sh`. No release archive is required.

## Repository layout

- `noir/bin/noir-init` — CLI
- `noir/skills/` — global skill registry
- `noir/templates/` — global templates
- `install.sh` — installs the source tree into `~/.noir`
- `run.sh` — clones the repository and runs the installer

## Installed layout

```text
~/.noir/
├── bin/noir-init
├── skills/
└── templates/
```

Project `.noir/` is state/control-plane only. It does not contain skills. Project skill execution happens through `.claude/skills/`, which links to the global `~/.noir/skills/` registry.

## Permanent Noir skills

- `noir-scope`
- `noir-techstack`
- `noir-planner`
- `noir-designer`
- `noir-threat`
- `noir-coder`
- `noir-quality`
- `noir-security`
