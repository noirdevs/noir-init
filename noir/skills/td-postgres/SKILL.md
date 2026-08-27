---
name: td-postgres
description: Implement approved PostgreSQL persistence with correct schema constraints, indexes, queries, transactions, migrations, connection behavior, and performance verification.
---
# TD Postgres

Implement approved PostgreSQL persistence with correct schema constraints, indexes, queries, transactions, migrations, connection behavior, and performance verification.

Read the approved requirements, `STACK.md`, relevant planning artifacts, and existing repository conventions before acting.

Use real PostgreSQL integration tests when semantics matter; use EXPLAIN for measured performance work.

Preserve explicit decisions. Do not select technology, hosting, or lifecycle state. Do not add dependencies without justification.

Verify the affected behavior and report blockers rather than hiding them.

Then STOP.
