# STACK.md Contract Reference

Use this reference when creating or validating `STACK.md`.

## Required Header

```markdown
# Technical Stack

Status: PROPOSED
Stack Mode: FULL_AI
```

or `Stack Mode: MANUAL`.

## Required Core Fields

`STACK.md` must contain Language, Framework, Runtime, Frontend, Backend, Database, Package Manager, Testing, Build/Tooling, and Deployment. Runtime / Deployment Model is required when applicable.

Record architecture shape when it materially exists. For client-only projects explicitly say backend/database are absent. For decoupled projects identify frontend/backend separately.

## Status

Allowed semantics: `TBD`, `PROPOSED`, `APPROVED`.

The skill normally writes `PROPOSED`. Only `noir-init` may transition to `APPROVED`.

## Core vs Supporting

Keep core stack separate from supporting dependencies. Do not let a library silently become a core framework.

## Owner vs AI

Make ownership visible. For FULL_AI the initial stack is AI-recommended until the owner explicitly selects final. For MANUAL, owner-selected core technologies are authoritative.

## Rationale

Record only rationale that materially affected the decision. Avoid generic filler.

## Alternatives

Record meaningful alternatives, not every technology considered. For each important alternative include why considered, main advantage, main disadvantage, and why it was not selected when applicable.

## Decision History

When reconsideration changed the candidate, preserve a compact history of the initial recommendation, owner reconsideration, comparative evaluation, and final proposed stack.

## Unresolved Technical Decisions

These are technical details that do not block the current stack proposal. Do not put unresolved product questions here. If a technical issue invalidates the stack, return to evaluation or request an owner decision.

## Approval Notes

End with:

```markdown
## Approval

Status remains PROPOSED.
Approval is performed by the project owner through noir-init.
```

Do not claim approval occurred.

## Consistency Checklist

Before writing the artifact verify requirements are satisfied, explicit owner decisions are preserved, architecture shape is consistent, core fields are populated, recommendations are distinguishable from decisions, reconsideration history is preserved, unresolved technical decisions are not product Open Questions, and status remains PROPOSED.
