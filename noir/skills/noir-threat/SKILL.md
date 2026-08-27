---
name: noir-threat
description: Build a repository-specific pre-code threat model from approved scope, stack, planning artifacts, data flows, deployment exposure, trust boundaries, assets, threats, mitigations, and security requirements.
---
# Noir Threat

Run inside PLAN only after the first Planner pass produces requirements context, `STACK.md`, `docs/architecture.md`, `docs/data-model.md`, `docs/flows.md`, and `docs/ACCEPTANCE.md`.

Identify assets, actors, trust boundaries, entry points, data flows, realistic threats/abuse cases, impact, mitigations, and testable security requirements. Use STRIDE-style reasoning when useful, not as a mechanical checklist.

Write `docs/THREAT_MODEL.md`. Each meaningful threat includes ID, asset, attack surface, trust boundary, scenario, impact, mitigation, security requirement, and acceptance/test implication.

Do not choose Stack, implement code, redesign product, or self-approve PLAN. Planner consumes this artifact before finalizing `implementation-plan.md`.

Then STOP.
