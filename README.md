# GLOW Accessibility Champion Lab

University of Arizona AI Campus Champions capstone — Summer 2026.

**Jeff Bishop** | <jeffbis@arizona.edu> | [Accessing Higher Ground, October 2026](https://accessinghigherground.org/)

---

## What This Is

The GLOW Accessibility Champion Lab is a human-centered responsible-AI adoption initiative for scalable accessibility practice. It is grounded in the idea that accessibility cannot scale when specialists are expected to fix everything.

This repository contains the six-module capstone artifacts, reusable templates, wiki source pages, and PowerShell workflow tools developed through the AI Campus Champions program.

> **This initiative is not about asking AI to make accessibility decisions. It is about using structured, human-reviewed AI workflows to help people learn accessibility patterns, ask better questions, and take appropriate responsibility.**

---

## The GLOW Framework

| Letter | Meaning | Capstone Application |
|---|---|---|
| G | Ground the work in a real accessibility problem. | Start with a partner-facing accessibility need, not the AI tool. |
| L | Learn what people need to understand. | Identify the accessibility pattern the partner needs to learn. |
| O | Organize a repeatable workflow. | Turn the pattern into a prompt, checklist, template, or GLOW skill. |
| W | Walk forward as accessibility champions. | Leave with a practical next step, human-review safeguard, and reusable artifact. |

---

## Repository Structure

```text
glow-accessibility-champion-lab/
├── README.md                          This file
├── license.md                         MIT License
├── SAFETY.md                          Privacy and safety guardrails
├── .gitignore
├── .vscode/                           VS Code settings, extensions, tasks
├── .github/
│   ├── ISSUE_TEMPLATE/                Three issue templates
│   └── workflows/markdown-check.yml  Automated markdown linting
├── 00-capstone-overview/              Thesis, problem statement, elevator pitch, source map
├── 01-module-ai-foundations/          Glossary, concept map, LLM exploration log
├── 02-module-generative-ai/           Tool comparison, prompt log, hallucination audit
│   ├── prompts/                       Five structured prompt files
│   └── outputs/                       Raw and human-reviewed outputs
├── 03-module-ai-productivity/         Workflow audit, task log, disclosure decision
├── 04-module-critical-thinking/       Bias audit, fairness review, Stochastic Parrots annotation
├── 05-module-governance/              Risk register, governance principles, policy position
├── 06-module-campus-champion/         Initiative canvas, stakeholder communication, 90-day plan
├── templates/                         Nine reusable workflow and review templates
├── ahg-implementation/                AHG workshop alignment, Lab Hub MVP, pilot plan
├── wiki-source/                       Fourteen polished wiki pages (published separately)
└── tools/                             Seven PowerShell scripts for weekly workflow
```

---

## Six Modules

### Module 1 — AI Foundations

Build shared vocabulary and situate AI in accessibility work. Artifacts: glossary, concept map, LLM exploration log, reflection, forum post.

### Module 2 — Generative AI

Compare tools, design prompts, detect hallucinations, document limits. Artifacts: two-tool comparison, prompt engineering log, hallucination audit, tool landscape annotation, forum post.

### Module 3 — AI for Productivity

Audit recurring tasks, document one real AI-assisted workflow, apply disclosure reasoning. Artifacts: workflow audit matrix, task log, raw output, human-edited output, disclosure decision, workflow canvas, forum post.

### Module 4 — Critical Thinking About AI

Disability and accessibility bias in AI outputs, fairness review, Stochastic Parrots. Artifacts: bias case analysis, disability/accessibility bias audit, Stochastic Parrots annotation, fairness review checklist, forum post.

### Module 5 — AI Governance

Translate governance principles into practical safeguards. Artifacts: peer policy evaluation, governance principle application table, policy position paper, unit-level acceptable use guideline, risk register, forum post.

### Module 6 — AI Campus Champion Initiative

Move from learning to implementation. Artifacts: initiative design canvas, stakeholder communication, peer review template, 90-day action plan, revised concept map, final capstone summary, forum post.

---

## Acceptable Use

AI tools may be used to support low-risk accessibility drafting, brainstorming, plain-language rewriting, checklist development, and training examples when the input is **public, fictional, or appropriately sanitized**.

AI tools **must not** be used to make final accessibility, legal, accommodation, medical, employment, or policy decisions.

All AI-assisted content requires human review before use. See `SAFETY.md` and `templates/human-review-checklist.md`.

---

## PowerShell Tools

Run from the repository root (`./\glow-accessibility-champion-lab`).

| Script | Purpose | Example |
|---|---|---|
| `tools/weekly-closeout.ps1` | Scan module folder for placeholders and privacy flags before committing | `pwsh .\tools\weekly-closeout.ps1 -ModuleFolder .\01-module-ai-foundations` |
| `tools/sync-wiki-source.ps1` | Verify wiki-source directory is ready | `pwsh .\tools\sync-wiki-source.ps1` |
| `tools/publish-wiki.ps1` | Copy wiki-source pages to local wiki clone and push to GitHub | `pwsh .\tools\publish-wiki.ps1` |
| `tools/create-discussion-post.ps1` | Post a module forum draft to the AI Champions discussions | `pwsh .\tools\create-discussion-post.ps1 -Repo UA-AI2S/AI-Champions -Category General -Title "..." -BodyFile .\01-module-ai-foundations\forum-post-module-1.md` |
| `tools/package-capstone.ps1` | Create a final sanitized zip package of all capstone artifacts | `pwsh .\tools\package-capstone.ps1` |
| `tools/new-module-artifact.ps1` | Create a new artifact file from the module closeout template | `pwsh .\tools\new-module-artifact.ps1 -ModuleFolder .\01-module-ai-foundations -FileName notes.md` |

---

## Weekly Working Pattern

```powershell
# Start of week
git pull
code . --profile "AI Campus Champions"

# During the week
git checkout -b module-1-ai-foundations
# edit files
git add .
git commit -m "Draft Module 1 reflection"

# End of week
pwsh .\tools\weekly-closeout.ps1 -ModuleFolder .\01-module-ai-foundations
git add .
git commit -m "Complete Module 1 artifacts"
git push -u origin module-1-ai-foundations

# Wiki and discussion
code .\wiki-source\Module-1---AI-Foundations.md
pwsh .\tools\publish-wiki.ps1
```

---

## Wiki

The `wiki-source/` folder contains fourteen polished pages that mirror the GitHub wiki. Pages are published to the wiki using `tools/publish-wiki.ps1`.

**Wiki pages:**

- Home
- Capstone Overview
- GLOW Framework
- Module 1 through Module 6 summary pages
- Human Review and Accessibility Safeguards
- GLOW Lab Hub MVP
- AHG Implementation Milestone
- References

**To set up the wiki the first time:** Create a placeholder Home page at `https://github.com/accesswatch/glow-accessibility-champion-lab/wiki`, then clone the wiki locally:

```powershell
git clone https://github.com/accesswatch/glow-accessibility-champion-lab.wiki.git D:\glow-accessibility-champion-lab.wiki
```

Then run `pwsh .\tools\publish-wiki.ps1` to push all pages.

---

## GitHub Issues

Three issue templates are included under `.github/ISSUE_TEMPLATE/`:

- **module-artifact.yml** — Track a module deliverable through drafting, review, and commit.
- **capstone-task.yml** — Track any capstone task with human-review and safeguard checklists.
- **safeguard-review.yml** — Request or document a privacy, accuracy, and bias review before publishing.

Labels to create with `gh label create`:

```powershell
gh label create module-1 --description "Module 1 AI Foundations" --color 0969DA
gh label create module-2 --description "Module 2 Generative AI" --color 8250DF
gh label create module-3 --description "Module 3 AI for Productivity" --color 1F883D
gh label create module-4 --description "Module 4 Critical Thinking" --color BF8700
gh label create module-5 --description "Module 5 Governance" --color CF222E
gh label create module-6 --description "Module 6 Campus Champion" --color 6F42C1
gh label create human-review --description "Requires human review" --color FBCA04
gh label create privacy-review --description "Requires privacy/sanitization review" --color D4C5F9
gh label create wiki --description "Wiki publication task" --color 0E8A16
gh label create forum-post --description "Discussion forum draft or post" --color BFDADC
```

---

## Final Capstone Package

At the end of the six-week program, run:

```powershell
pwsh .\tools\package-capstone.ps1
```

This creates `dist/glow-accessibility-champion-lab-capstone.zip` containing all artifact folders, README, and SAFETY.md. Review `ahg-implementation/public-sharing-sanitization-checklist.md` before any public release.

---

## AHG Implementation Milestone

The October 2026 [Accessing Higher Ground](https://accessinghigherground.org/) workshop serves as the public implementation and scaling milestone for the GLOW Accessibility Champion Lab. See `ahg-implementation/` for alignment documents, the Lab Hub MVP outline, and the pilot plan.

---

## Program Context

- Program: [University of Arizona AI Campus Champions](https://github.com/UA-AI2S/AI-Champions/wiki)
- Capstone period: Summer 2026
- Implementation milestone: Accessing Higher Ground, October 2026
- Full implementation plan: `docs/glow_accessibility_champion_lab_six_module_capstone_plan_cli_updated.md`
