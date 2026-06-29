# AI Tool Landscape Annotation

| Tool | Type | Strengths for accessibility work | Risks | UA-approved? | Notes |
|---|---|---|---|---|---|
| Claude (claude-opus-4-8) | General LLM | Accurate WCAG 2.2 detail; consistently names its own limits and adds human-review steps; strong at teaching, not just fixing | Still a general model; can sound authoritative; no real assistive-technology testing | Verify current UA tool list before classroom or partner use | Tool A in this module; best fit for coaching workflows |
| GPT-4o | General LLM | Fluent, well-structured drafts; good general coaching tone and checklists | Made real WCAG criterion errors in this run; more generic; drifts from accessibility specifics | Verify current UA tool list before use | Tool B in this module; needs tighter fact-checking |
| Specialized checker (axe DevTools / WAVE) | Specialized tool | Detects concrete code-level issues against WCAG; deterministic and testable | Cannot judge purpose, context, or usability; misses what only a human notices | Browser extensions; check unit policy | Complements LLMs; finds machine-detectable failures an LLM only guesses at |

## Annotation Notes

This table documents the tools compared during Module 2. The two general LLMs
were sent identical prompts through their provider APIs; the specialized checker
is included to show where deterministic tooling belongs in the workflow.

The practical takeaway is division of labor. A specialized checker reliably
catches machine-detectable failures (missing alt attributes, contrast ratios,
missing form labels). A general LLM is better at explaining, coaching, and
drafting plain-language guidance, but it cannot test real assistive technology
and will occasionally state a standard incorrectly with full confidence. Neither
replaces a human reviewer.

### Key questions for each tool

- Does it acknowledge the limits of its accessibility knowledge?
- Does it recommend human review?
- Does it distinguish between compliance and usability?
- Does it use respectful and current disability language?
- Does it produce outputs in a useful format for campus partners?

In this module, Claude scored best on acknowledging limits and recommending
human review. Both LLMs used respectful, current disability language. Only the
specialized checker produces machine-verifiable conformance signals, and it does
so without any judgment about whether a passing page is actually usable.
