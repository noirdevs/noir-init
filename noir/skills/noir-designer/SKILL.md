---
name: noir-designer
description: Use when approved requirements and an approved technical stack need a UI/UX decision. References are optional evidence; AI evaluates and optimizes them rather than blindly reproducing them.
---
# Noir Designer

## Purpose

Establish a deterministic, implementation-ready UI/UX direction from approved requirements, the approved technical stack, existing project conventions, and optional visual references.

There is only one design decision mode: **HYBRID**.

HYBRID means AI-driven design decision with optional `reference/` input.
`reference/` is evidence/inspiration, not a separate UI mode or lifecycle branch.

When references are present, AI evaluates them against requirements, stack constraints, framework conventions, usability, accessibility, maintainability, and project scope. The result is an optimized UI direction, not a pixel-perfect copy.

This skill does not perform product discovery, stack selection, system architecture, implementation planning, coding, installation, deployment, or lifecycle orchestration.

## Noir Lifecycle Boundary

`noir-init` owns lifecycle state, validation, approval gates, synchronization, and reconsideration. Design decisions are part of PLAN, not a separate lifecycle phase.

This skill MUST NOT modify `.noir/*`, invoke `noir-init`, change lifecycle state, or simulate a lifecycle approval.

It produces or updates UI artifacts; `noir-init` validates and gates them.

## Inputs

Required:
- `docs/requirements.md`
- `STACK.md`

Inspect when relevant:
- `AGENTS.md`
- existing source, routes, templates, components, CSS, themes
- design-system and frontend configuration
- UI tests and existing conventions

Optional:
- `reference/`

Do not scan the entire repository without a reason.

For an existing project, established working UI conventions are authoritative unless requirements or the project owner explicitly require change.

## Preconditions

Before making a design decision:
1. Requirements exist and have no critical unresolved product questions.
2. `STACK.md` contains a usable stack decision.
3. Enough information exists to determine UI constraints.
4. Existing approved Design decisions are preserved unless explicitly reconsidered.

If requirements are materially unresolved, stop and return to Scope.

If the stack is materially unresolved, stop and return to Stack Decision.

Do not invent product requirements to continue.

# Core Principle: HYBRID — AI + Optional Reference

The workflow is:

```text
Requirements
    +
STACK.md
    +
Repository conventions
    +
reference/ (optional)
    ↓
AI evaluation
    ↓
Optimized design decision
```

Without references, AI derives the UI from requirements, stack constraints, repository evidence, and framework conventions.

With references, AI evaluates them as evidence and inspiration.

A reference is never automatically authoritative.

The presence or absence of `reference/` MUST NOT change the UI lifecycle or create a second UI mode. It only changes the evidence available to the same AI-driven decision.

## Optional Reference Directory

The conventional optional location is:

```text
reference/
```

It may contain screenshots, mockups, PNG/JPG/WEBP/SVG files, exported designs, or other supported visual references.

References may represent login, navigation, dashboards, tables, forms, detail pages, mobile layouts, color direction, typography, density, or interaction patterns.

A reference does not need to represent the whole product.

If `reference/` is absent or empty, continue normally.

# Reference Evaluation

When references exist, classify useful observations as:

### ADOPT
Use the visual or interaction idea substantially because it fits the requirements and stack.

### ADAPT
Use the underlying idea but modify it for framework conventions, accessibility, responsive behavior, requirements, scope, or maintainability.

### REJECT
Do not use the idea because it conflicts with requirements/framework conventions, introduces unnecessary complexity, harms usability/accessibility, duplicates framework capability, or provides insufficient product value.

The goal is optimized adaptation, not imitation.

# Framework-First Rule

The selected stack is a first-class UI constraint.

Before designing custom UI, determine what the framework/platform already provides.

Prefer existing framework capabilities when they adequately satisfy requirements.

Do not rebuild capabilities that the framework already provides adequately.

If a reference conflicts with framework conventions, adapt or reject the reference unless the owner explicitly changes the stack.

# Avoid Over-Engineering

Do not introduce a new design system, component library, token architecture, state library, charting library, custom animations, responsive infrastructure, CSS methodology, navigation shell, or theme layer unless requirements, existing project conventions, or reference-driven decisions materially justify it.

The simplest UI that clearly satisfies the requirements is preferred.

```text
deterministic UI > artifact count
framework-native solution > custom solution
```

when both satisfy requirements.

# Decision Workflow

## 1. Read Context

Read:
1. `docs/requirements.md`
2. `STACK.md`
3. `AGENTS.md` when available

Extract users/roles, workflows, UI requirements, accessibility constraints, responsive needs, delivery environment, explicit visual decisions, and technical constraints.

Do not invent missing requirements.

## 2. Inspect Existing UI

For existing projects inspect relevant layouts, routes, templates, components, CSS, themes, design systems, framework conventions, and responsive patterns.

For greenfield projects determine the native UI conventions of the selected stack.

## 3. Inspect References

If `reference/` exists:
1. list relevant files;
2. inspect each relevant image;
3. identify useful patterns;
4. classify important observations as ADOPT, ADAPT, or REJECT;
5. explain material deviations.

If no references exist, continue without them.

## 4. Establish UI Direction

Define, when relevant:
- visual direction;
- information hierarchy;
- navigation;
- screen/page structure;
- role-based visibility;
- responsive behavior;
- interaction patterns;
- forms;
- tables/lists;
- loading, empty, error, success states;
- confirmation behavior;
- accessibility;
- status representation.

The level of detail must match project complexity.

Do not create speculative screens unsupported by requirements.

## 5. Resolve Material UI Ambiguities

If a design decision materially affects implementation and cannot be established from requirements, stack, repository, or references, ask the smallest useful interactive question.

Do not ask questions whose answers can reliably be derived from context.

When a safe framework-native default exists, use it and document it.

## 6. Design for Roles and Workflows

For important roles determine:
- entry point;
- navigation;
- visible data;
- permitted actions;
- filters;
- important statuses;
- confirmations;
- error/empty states.

Do not create separate screens merely because roles differ when a shared screen with role-based visibility is clearer.

## 7. Define States and Feedback

For important workflows specify:
- initial/loading state when relevant;
- empty state;
- validation error;
- permission error;
- business-rule error;
- success state;
- destructive-action confirmation;
- stale/offline state when relevant.

Critical status must not be communicated by color alone.

## 8. Responsive Behavior

Determine responsive behavior from actual usage.

Do not assume every application needs full mobile parity.

If a workflow genuinely occurs on mobile, specify it.

Document important responsive constraints so expected framework behavior is not mistaken for a bug.

# Artifact Strategy

## `ui/spec.md`

Always create or update `ui/spec.md`.

It is the authoritative design decision and should contain, when relevant:
- status and mode;
- sources;
- design direction;
- reference evaluation;
- framework constraints;
- navigation;
- screen inventory;
- workflows;
- components;
- states;
- responsive behavior;
- accessibility;
- important interaction rules;
- verification notes;
- unresolved Design decisions.

The artifact must be implementation-oriented without becoming application code.

## `ui/design-tokens.md`

Create only when the project genuinely needs a separately managed design-token system, such as a custom color/typography/spacing/elevation system shared across multiple surfaces.

Do not create it merely because a reference contains colors.

If the framework already provides the visual system and no custom token layer is needed, keep the decision in `ui/spec.md` and use framework-native tokens.

## `ui/components.md`

Create only when there is a material custom component inventory that Planner/Coder need to implement consistently, such as custom dashboard cards, domain-specific tables, or reusable workflow controls.

Do not create it merely to list framework-native components.

# Reference Is Not a Copy Specification

Never instruct the implementation to reproduce a reference exactly.

Instead record:
- what is adopted;
- what is adapted;
- what is rejected;
- why the final design is better suited to this project.

# Accessibility

At minimum evaluate:
- keyboard access;
- visible focus;
- readable text;
- sufficient contrast;
- non-color status communication;
- form labels;
- error association;
- destructive-action confirmation where appropriate;
- semantic structure.

Do not claim a contrast ratio is verified unless it was actually computed or verified from an authoritative source.

# Evidence Classification

Distinguish:
- **VERIFIED** — directly established from repository, official documentation, or actual calculation/inspection;
- **OBSERVED** — seen in a reference or repository;
- **RECOMMENDED** — AI recommendation;
- **ASSUMPTION** — reasonable but unconfirmed;
- **UNKNOWN** — not established.

Do not present reference observations as requirements.

Do not present AI recommendations as owner decisions.

# UI Reconsideration

After the initial proposal, explicitly give the project owner an interactive choice:

1. Accept this UI direction.
2. Reconsider specific parts.
3. Reconsider the entire UI direction.
4. Compare with an alternative direction.

If reconsideration is requested:
- preserve the current proposal;
- identify the changed decision;
- explain trade-offs;
- compare against requirements and stack constraints;
- update the artifact after the reconsideration is resolved.

Do not silently replace an owner-approved design decision.

Lifecycle approval remains owned by `noir-init`.

# Conflict Detection

Check for material conflicts between:
- requirements;
- explicit project decisions;
- `STACK.md`;
- existing UI conventions;
- reference-driven preferences.

A difference between a requirement and a reference is normally an adaptation problem, not a contradiction.

# Artifact Contract

`ui/spec.md` must begin with:

```markdown
# UI Specification

Status: PROPOSED
Mode: AI
```

It should identify its sources.

If no references were supplied:

```text
Reference source: none
```

If references were supplied, record the relevant filenames.

## Status

Use:
- `Status: TBD` when no usable UI direction exists;
- `Status: PROPOSED` when a UI direction exists but is not approved;
- `Status: APPROVED` only after owner approval through `noir-init`.

Never self-approve.

# Consistency Rules

Before finalizing:
1. UI agrees with requirements.
2. UI respects `STACK.md`.
3. Owner decisions are preserved.
4. Framework-native capabilities are preferred when sufficient.
5. Reference adaptations are distinguished from adoption.
6. No unsupported product behavior is invented.
7. Accessibility is not silently dropped.
8. Responsive behavior is documented where material.
9. `ui/design-tokens.md` exists only when independently justified.
10. `ui/components.md` exists only when independently justified.
11. No artifact exists solely for completeness.
12. Status remains `PROPOSED` until lifecycle approval.

# Handoff

Planner consumes the design decision artifacts produced during PLAN.

Planner treats:
- `ui/spec.md` as authoritative UI direction;
- `ui/design-tokens.md` as authoritative token guidance when present;
- `ui/components.md` as authoritative custom component guidance when present.

Coder must not infer that absence of token/component artifacts means those systems should be invented.

# Hard Boundaries

Never:
- redefine product requirements;
- select the technical stack;
- replace an owner-selected framework;
- design system architecture;
- define database schema;
- define API architecture;
- create implementation tasks;
- write application code;
- install packages;
- deploy;
- modify `.noir/*`;
- change lifecycle state;
- approve the UI;
- blindly copy visual references.

# Completion

Designer is complete when:
1. requirements and stack have been read;
2. existing UI conventions have been inspected when relevant;
3. references have been evaluated when present;
4. framework-native capabilities have been considered;
5. visual and interaction direction is clear;
6. important screens/workflows are deterministic enough for Planner;
7. important states and accessibility behavior are defined;
8. material UI ambiguities are resolved;
9. unnecessary custom systems are avoided;
10. only justified artifacts have been created;
11. `ui/spec.md` is internally consistent;
12. status remains `PROPOSED`;
13. approval remains with the project owner through `noir-init`.

Then stop.
