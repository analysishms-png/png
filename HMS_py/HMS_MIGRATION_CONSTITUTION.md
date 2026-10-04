# HMS Migration Constitution

## Principles

### Principle 1 — VB6 Behavioral Fidelity
When migrating existing HMS functionality, the original VB6 source is the primary behavioral reference. Do not change business rules merely because a different implementation appears cleaner. If the Python implementation differs from VB6, investigate and document the difference.

### Principle 2 — Existing Python Project First
Repair and extend the existing Python project. Do not create a parallel HMS application.

### Principle 3 — Database Fidelity
Use the existing SQL Server schema unless there is documented evidence that a schema change is required. Do not invent tables or columns. Do not rename database objects without evidence. Do not silently change SQL semantics.

### Principle 4 — UI Fidelity
Every migrated screen must preserve functional behavior of the corresponding VB6 form. Verify controls, fields, buttons, menus, keyboard events, validation, navigation, permissions, calculations, search, save, edit, delete, reports, and printing.

### Principle 5 — Transaction Safety
Critical HMS operations must have: validate → recheck → begin transaction → write → post-condition verification → commit, with rollback on failure.

### Principle 6 — No Fake Completion
A feature is NOT complete merely because a Python file exists, a screen opens, or a button exists. Completion requires behavioral and functional verification.

### Principle 7 — Evidence-Based Migration
Every migrated form, procedure, table mapping and important business rule must have evidence.

### Principle 8 — SQL Server Compatibility
Maintain compatibility with the project's required SQL Server environment (e.g., SQL Server 2008 R2). Do not introduce unsupported SQL syntax without verification.

### Principle 9 — Reports and Printing Are Functional Requirements
Reports, parameters, preview, printing and reprinting are part of the feature. They are not optional.

### Principle 10 — Regression Protection
Every completed migration must be regression-tested against previously completed modules.

---

## Master Source Priority
1. Actual VB6 source behavior
2. Existing live database schema/data
3. Existing Python implementation
4. Existing project documentation
5. Tests
6. External documentation/web research
7. AI-generated assumptions
