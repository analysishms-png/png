# Requirements Checklist: {FEATURE}

- Spec: `specs/###-{slug}/spec.md` · Reviewer: {agent/role} · Date: {YYYY-MM-DD}
- `[x]` = criterion reviewed and satisfied **for requirements quality** — NOT implementation complete.

## Categories

- [ ] **Scope** — single capability; no implementation details smuggled into spec; out-of-scope listed
- [ ] **Evidence** — every FR cites a VB6 ref (`file:line`) or `UNKNOWN — REQUIRES INVESTIGATION`
- [ ] **Testability** — each User Story has priority (P1/P2/P3), independent test, Given/When/Then scenarios
- [ ] **Success criteria** — measurable SC-* exist
- [ ] **Edge cases & assumptions** — listed; unknowns flagged, not guessed
- [ ] **Parity** — statuses/chain respected; ledgers referenced; no duplicate of an existing spec
- [ ] **Security** — auth/PII/payment/file-upload/external integration flagged for `@security-reviewer`
- [ ] **Constitution** — plan.md Constitution Check all PASS

## Findings

| ID | Severity | Finding | Location |
|---|---|---|---|
| F-001 | Critical/Major/Minor | {...} | `{file:line}` |

## Verdict
PASS ✅ (all mandatory categories satisfied) / FAIL ❌ (return to spec phase — list blocking findings)
