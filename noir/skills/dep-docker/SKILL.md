---
name: dep-docker
description: Implement approved Docker or Docker Compose deployment with reproducible images, runtime configuration, networking, health checks, persistence, secrets, startup/shutdown, and verification.
---
# DEP Docker

Implement approved Docker or Docker Compose deployment with reproducible images, runtime configuration, networking, health checks, persistence, secrets, startup/shutdown, and verification.

Read the approved requirements, `STACK.md`, relevant planning artifacts, and existing repository conventions before acting.

Never hide failures with ignored exit codes, disabled health checks, or arbitrary sleeps.

Preserve explicit decisions. Do not select technology, hosting, or lifecycle state. Do not add dependencies without justification.

Verify the affected behavior and report blockers rather than hiding them.

Then STOP.
