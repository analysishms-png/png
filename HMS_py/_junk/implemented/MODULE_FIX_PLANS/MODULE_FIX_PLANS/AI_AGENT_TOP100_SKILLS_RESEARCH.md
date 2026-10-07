# AI Agent "Pro" Skills — Top 100 Research Report (Sep 2026)

Compiled for improving the local opencode / agent setup. Sources:

1. AGNT.gg — "The 100 Best AI Agent Skills in 2026: The Definitive Guide" (12 categories, curated from 5,200+ community skills, Apr 2026)
2. MCPMarket — "Top 100 Agent Skills" leaderboard (by GitHub stars, top skill at 388k)
3. MCPMarket — "Top 100 MCP Servers" leaderboard (#1 Superpowers 289k stars)

Skill = reusable `SKILL.md` instruction set; portable across Claude Code, Cursor, Gemini CLI, Codex CLI, GitHub Copilot, opencode.

---

## 1. AGNT.gg 100 Skills (12 categories, full list)

### 1. Development & Coding
1. Code Reviewer / Simplify — structured quality pass; auto-fixes before output (Anthropic official `simplify`)
2. Test-Driven Development (TDD) — red-green-refactor (obra/superpowers)
3. Browser Use / Playwright Automation — headless browser, QA, scraping
4. MCP Builder — Python (FastMCP) / TS (MCP SDK) servers
5. Software Architecture — Clean Arch, SOLID, DDD (NeoLabHQ/context-engineering-kit)
6. Systematic Debugging — reproduce → isolate → hypothesize → test → fix (superpowers)
7. Git Worktrees & Branch Management — isolated parallel feature branches (superpowers)
8. Subagent-Driven Development — parallel subagents + review checkpoints (NeoLabHQ)
9. Prompt Engineering — CoT, few-shot, AI-to-AI persuasion (NeoLabHQ)
10. Changelog Generator — git history → user-facing release notes (Composio)
11. PlanetScale DB Skills — branching schemas, index optimization
12. iOS Simulator — iOS UI testing/screenshots
13. PICT Test Case Design — pairwise combinatorial testing
14. LangSmith Fetch & Debug — LangChain trace debugging
15. Antigravity Awesome Skills Library — 1,234+ skills, one-command install (22k stars)

### 2. Design & Frontend
16. Frontend Design — kills "AI slop" uniformity (Anthropic, 277k installs)
17. Web Artifacts Builder — React/Tailwind/shadcn artifacts (Anthropic)
18. D3.js Visualization — working D3 charts/force-graphs
19. Canvas Design — PNG/PDF posters & infographics (Anthropic)
20. Theme Factory — 10 preset font/color themes for artifacts
21. Brand Guidelines — enforce org brand across outputs (Anthropic)
22. Excalidraw Diagram Generator — self-validating architecture diagrams
23. Frontend Slides — HTML presentations, PPTX conversion

### 3. Data & Analytics
24. Agent-SQL-Pro / NL→SQL — PostgreSQL/MySQL/Snowflake, read-only safety
25. CSV Data Summarizer — drop-in CSV → insights + charts + anomalies
26. Deep Research — multi-engine, cited structured reports
27. PostgreSQL DB Connector — safe read-only queries
28. Valyu Search — 36+ specialized data sources (SEC, PubMed, clinical trials, FRED)
29. ChartGen — NL → charts/dashboards
30. Google Analytics Automation — GA4 reporting
31. Root Cause Tracing — binary-search debugging (superpowers)

### 4. Document Processing
32. DOCX Editor — Word lifecycle incl. tracked changes (Anthropic, 28k)
33. PDF Toolkit — merge/split/OCR/forms (Anthropic, 32k)
34. PPTX Creator — slides/charts/speaker notes (Anthropic, 22k)
35. XLSX Master — formulas, pivot tables, charts (Anthropic, 35k, 4.8/5)
36. Markdown → EPUB converter
37. Article Extractor — clean text from web pages
38. YouTube Transcript — transcripts for notes/summaries

### 5. Content Creation & Writing
39. Content Research Writer — research → outline → draft → citations
40. Twitter/X Algorithm Optimizer
41. SEO Content Agent — keyword research, meta, gap analysis
42. Blog Writer — ideation → draft → CTA
43. Meeting Insights Analyzer — behavioral patterns from transcripts
44. Internal Communications — 3P updates, newsletters, FAQs (Anthropic, 9.2k)
45. Academic Research Hub — literature review, APA/MLA/Chicago
46. Tailored Resume Generator — ATS-optimized
47. Domain Name Brainstormer — availability + brandability

### 6. Security & Compliance
48. Shannon: Autonomous AI Pentester — 96.15% XBOW success, ~$50/pentest
49. FFUF Web Fuzzing — dir discovery, param brute-force
50. Trail of Bits Security Skills — CodeQL/Semgrep, variant analysis
51. Computer Forensics — evidence collection, chain-of-custody
52. Threat Hunting with Sigma Rules — SIEM query translation
53. Metadata Extraction & Analysis — EXIF, doc properties
54. Agentic Security Audit — prompt injection, tool poisoning, escalation
55. Compliance & Regulatory Advisor — GDPR/HIPAA/SOC 2 gap reports

### 7. Business & Marketing
56. Lead Research Assistant
57. Competitive Ads Extractor — ad library analysis
58. HubSpot CRM Automation
59. Salesforce Automation
60. Shopify E-Commerce Automation
61. Stripe Payment Automation
62. Mailchimp Email Marketing
63. LinkedIn Automation
64. Brand Voice Profile — extract reusable brand voice guide

### 8. Productivity & Automation
65. Google Workspace (GWS) Suite — 4,900 stars in 3 days; recipes: EA, PM, IT admin
66. File Organizer — dedupe, batch rename
67. Invoice Organizer — tax-ready summaries
68. n8n Workflow Skills — build/debug automations (422+ integrations)
69. Kaizen Continuous Improvement — Lean waste elimination
70. Calendar & Scheduling (Calendly/Cal.com)
71. Tapestry Knowledge Networks — persistent knowledge memos
72. Ship-Learn-Next Feedback Loop
73. ADHD Founder Planner

### 9. Communication & Collaboration
74. Gmail Automation
75. Slack Automation
76. Discord Automation
77. Microsoft Teams Automation
78. Notion Automation
79. Jira Automation
80. NotebookLM Integration — citation-backed answers from docs
81. Outline Wiki Management

### 10. DevOps & Infrastructure
82. GitHub Automation (CLI-driven)
83. Vercel Deployment Automation
84. AWS CDK Skills
85. Supabase Automation
86. Sentry Error Monitoring
87. Datadog Monitoring
88. Docker & Container Management
89. CI/CD Pipeline Automation (CircleCI/GitLab)

### 11. Creative & Media
90. Remotion: Programmatic Video Creation
91. Image Generation (Imagen)
92. Slack GIF Creator
93. Algorithmic Art
94. Image Enhancer
95. Video Downloader
96. Audio Transcription & TTS
97. 3D Model Generation

### 12. Enterprise & Industry-Specific
98. Loki Mode: Multi-Agent Startup System
99. Scientific Research Skills
100. Google Workspace Enterprise Suite

---

## 2. Key takeaways from all three sources

- **Highest-value set is consistent across sources:** Simplify/Code-Review, TDD, browser automation, MCP Builder, Software Architecture, Systematic Debugging, Git Worktrees, Subagent-Driven Dev, Prompt Engineering, Deep Research, spec-driven workflows.
- **Superpowers (obra) is #1 everywhere** — one install = 20+ battle-tested skills (TDD, debugging, worktrees, git-pushing, root-cause).
- **opencode already-relevant MCP servers from Top-100 list:** Context7 (#6) ✓, Chrome DevTools (#8) ✓, Playwright (#14) ✓, GitHub (#16) ✓ — all already enabled in `opencode.jsonc`.
- **Missing MCP servers worth adding later:** YouTube Transcript (no API key), Firecrawl (needs API key), Superpowers (skill library, no key).

---

## 3. Gap analysis — installed vs top-100 (current local skill library)

Installed library: `C:\Users\PC\.agents\skills\` (~100 skills) + project skill `hms-module-manual` + new `mssql`, `mysql`, `laravel`.

| Status | Skills |
|---|---|
| ✅ Have | tdd, test-driven-development, systematic-debugging, mcp-builder, frontend-design, web-artifacts-builder, canvas-design, excalidraw-diagram-generator, deep-research, multi-agent-research, docx, pdf, pptx, xlsx, security-review, firebase-security-rules-auditor, stripe-best-practices, supabase-postgres-best-practices, deploy-to-vercel, github-actions-docs, git-commit, remotion-best-practices, testing, webapp-testing, browser/agent-browser/browser-act/kimi-webbridge, brainstorming, documentation-writer, stop-slop, writing-plans, planning-with-files, docker(multi-stage), performance, mssql/mysql/laravel (kani banaye), azure-* (28), golang-*, python-*, vercel-*, nextjs, nodejs, tailwind, shadcn-ui, prisma, neon-postgres, etc. |
| ❌ High-value missing | **Simplify/Code Reviewer**, **Software Architecture**, **Prompt Engineering**, **Subagent-Driven Dev**, **Git Worktrees**, **Changelog Generator**, **Spec-driven / Implement Spec**, **CSV Summarizer**, **NL→SQL pro**, **Shannon pentester**, **FFUF**, **Trail-of-Bits**, **Agentic Security Audit**, **YouTube Transcript**, **Markdown→EPUB**, **D3.js**, **Theme Factory**, **Brand Guidelines**, **Frontend Slides**, **Google Workspace**, **Notion/Jira/Teams**, **DataDog/Sentry**, **AWS CDK**, **Audio transcription/TTS** |
| ⚠️ Partial (covered via substitutes) | Web scraper (~= automate-this, deep-research), Root-cause (~= systematic-debugging), Subagent (~= dispatching-parallel-agents), PostgreSQL (~= neon-postgres + prisma) |

**Recommended install bundle (Pro Dev Core):**
- `simplify` (Anthropic) — auto code-review/simplify
- `software-architecture` (NeoLabHQ context-engineering-kit)
- `prompt-engineering` (NeoLabHQ)
- `subagent-driven-development` (NeoLabHQ)
- `git-worktree-management` (superpowers)
- `changelog-generator` (Composio pattern)
- OR just install **Superpowers** (obra/superpowers) which bundles several of these in one go

---

*Report generated: 20 Sep 2026. Ready for follow-up: skill installation on confirmation.*