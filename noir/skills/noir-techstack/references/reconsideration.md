# Stack Reconsideration Reference

Use this reference whenever the owner is asked whether the initial stack is final or requests a reconsideration.

## Purpose

Reconsideration exists so the owner can challenge an AI recommendation or manually selected stack before approval.

It is mandatory for both FULL_AI and MANUAL.

MANUAL means the owner controls the initial selection. It does not prohibit technical critique.

FULL_AI means AI controls the initial recommendation. It does not make that recommendation final.

## Initial Question

After the initial stack proposal and pros/cons, ask:

> Apakah stack ini sudah final, atau ingin reconsider?

Accept natural-language answers.

Interpret:
- final / setuju / lanjut → finalization;
- reconsider / bandingkan / ganti → reconsideration;
- ambiguous → ask a short clarification.

## When Owner Gives an Alternative

Do not restart product discovery.

Evaluate the proposed alternative using the same approved requirements.

Compare requirements fit, complexity, deployment, performance, maintainability, ecosystem, testing, security, and operational burden.

## Comparison Format

Prefer:

```text
Current proposal: ...

Alternative: ...

Current — Pros
- ...

Current — Cons
- ...

Alternative — Pros
- ...

Alternative — Cons
- ...

Recommendation
- ...

Key trade-off
- ...
```

Keep it focused on decision-relevant differences.

## Do Not Bias Toward Current Proposal

The current proposal has no authority merely because it came first.

If the owner's alternative is materially better, say so. If the original is better, explain why. If they are close, say that the decision is primarily preference/trade-off.

## Multiple Rounds

Reconsideration may repeat. Each round must identify the current candidate, evaluate the new alternative, explain material trade-offs, and ask whether the resulting candidate is final.

Stop only when the owner explicitly chooses final.

## Recording History

`STACK.md` should preserve material decision history:

```markdown
## Decision History

1. Initial AI recommendation: ...
2. Owner reconsideration: ...
3. Comparative evaluation: ...
4. Final proposed stack: ...
```

Do not retain irrelevant conversational detail.

## Finality

“Final” means the owner has chosen the current stack; the artifact can remain `PROPOSED`; `noir-init` still controls lifecycle approval.

Do not change `Status` to `APPROVED`.
