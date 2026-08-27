# Stack Evaluation Reference

Use this reference only when performing technical evaluation.

## Evaluation Order

Evaluate in this order:

1. hard requirements and constraints;
2. architecture shape;
3. runtime compatibility;
4. ecosystem/framework fit;
5. persistence/data requirements;
6. background/concurrency requirements;
7. integration requirements;
8. security;
9. testing;
10. deployment/operations;
11. maintainability;
12. developer experience;
13. performance where material.

Do not score technologies mechanically when qualitative reasoning is sufficient.

## Hard Constraints First

Identify requirements that eliminate candidates.

A candidate that violates a hard constraint should not survive merely because it has other advantages.

## Architecture Shape

For each candidate determine whether it is fullstack, decoupled frontend/backend, static/client-only, or another justified shape. Explain the consequence.

Do not introduce a frontend/backend split unless it solves a real requirement.

## Compatibility

Verify material claims such as framework/runtime version compatibility, database driver support, build tool compatibility, operating-system/container requirements, browser support, and package-manager constraints.

Prefer official documentation and current release information.

## Ecosystem Fit

Consider required integrations, official SDKs, maintained libraries, documentation, community adoption, testing tools, and operational tooling.

Do not claim “best ecosystem” without evidence.

## Operational Complexity

Consider number of processes/services, deployment complexity, upgrades, observability, backups, failure modes, and developer setup. Prefer fewer moving parts when requirements do not justify more.

## Security

Consider authentication/session model, secret handling, network exposure, dependency surface, database exposure, client-side trust boundaries, and credential storage.

Do not invent security requirements.

## Testing

Consider unit, integration, browser/E2E, database testing, test isolation, and CI compatibility.

## Maintainability

Consider codebase complexity, conventions, ecosystem stability, upgrade path, and amount of custom infrastructure required.

## Trade-off Output

Keep the user-facing evaluation concise:

```text
Recommendation
Why
Pros
Cons
Main risk
Alternative
```

Do not produce a giant technology catalog.

## Evidence Classification

Label important claims mentally as VERIFIED, OBSERVED, RECOMMENDATION, or UNKNOWN. Never turn UNKNOWN into VERIFIED by implication.
