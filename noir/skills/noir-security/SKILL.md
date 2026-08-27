---
name: noir-security
description: Perform post-code security review and coordinate evidence-based authorized security testing against approved requirements, threat model, implementation, and deployment.
---
# Noir Security

Run inside AUDIT after BUILD.

Read `STACK.md`, `THREAT_MODEL.md`, acceptance, architecture/flows/data model, implementation, and deployment configuration.

Map security requirements to implementation evidence. Review authentication, authorization, validation, injection, secrets, sessions/tokens, sensitive data, file handling, SSRF, deserialization, dependencies, configuration, headers, abuse controls, logging, and deployment exposure as applicable.

Distinguish `OBSERVED`, `SUSPECTED`, `CONFIRMED`, `NOT REPRODUCED`, and `NOT APPLICABLE`. Do not call an unverified suspicion a confirmed vulnerability.

When authorized and appropriate, coordinate Strix or CyberStrike for runtime/offensive validation. Prefer finding → evidence → reproduction/PoC → impact → remediation → retest.

Critical/unresolved findings block AUDIT. Do not silently change Stack/architecture or self-approve AUDIT.

Then STOP.
