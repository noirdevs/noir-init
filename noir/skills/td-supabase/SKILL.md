---
name: td-supabase
description: Implement approved Supabase persistence and platform integration as a PostgreSQL-backed system, including migrations, RLS, Auth, Storage, generated APIs, and client/server boundaries.
---
# TD Supabase

Implement approved Supabase persistence and platform integration as a PostgreSQL-backed system, including migrations, RLS, Auth, Storage, generated APIs, and client/server boundaries.

Read the approved requirements, `STACK.md`, relevant planning artifacts, and existing repository conventions before acting.

Use with td-postgres. RLS is a critical authorization boundary; never disable it merely to make a query work. Use current official docs/tooling for exact CLI/config behavior.

Preserve explicit decisions. Do not select technology, hosting, or lifecycle state. Do not add dependencies without justification.

Verify the affected behavior and report blockers rather than hiding them.

Then STOP.
