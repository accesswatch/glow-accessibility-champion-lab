# Two-Tool Comparison

Tool A: Claude (claude-opus-4-8). Tool B: OpenAI (gpt-4o).
Date run: 2026-06-29. The same five prompts were sent to each tool through the
provider API. Raw outputs are saved unedited in `outputs/tool-a-output.md`
and `outputs/tool-b-output.md`.

Scoring is 1 (weak) to 5 (strong). The quality numbers below are a starting
assessment drafted from the real outputs; the WCAG accuracy row was verified by
hand against the published WCAG 2.2 specification. Confirm or adjust the
subjective scores in your own judgment before submission.

| Prompt | Tool A quality | Tool B quality | Accuracy | Accessibility usefulness | Tone | Hallucination risk | Winner | Notes |
|---|---:|---:|---|---|---|---|---|---|
| WCAG explanation | 5 | 3 | A high, B low | A names the correct 2.2 AA criteria; B is vague | Both clear | A low, B high | A | B mislabels criteria (see hallucination audit) |
| Announcement rewrite | 5 | 4 | Both ok | A moves details out of the PDF and adds an accommodations line | Both supportive | Low | A | B keeps "our regular venue" and example.com links |
| PDF coaching response | 5 | 4 | Both ok | A asks the source-vs-scan diagnostic; B gives a flat checklist | Both supportive | Low | A | Close; A teaches the upstream fix more clearly |
| Alt text purpose | 5 | 4 | Both ok | A gives a same-image, different-context table | Both fine | Low | A | B drifts into "cultural resonance," less alt-text specific |
| Human-review checklist | 5 | 4 | Both ok | A is deeper on AT testing and human accountability | Both fine | Low | A | B is solid but more generic |

## Analysis

The strongest tool was not the tool with the longest answer. It was the one
that produced accurate, teachable, appropriately cautious, accessibility-centered
guidance with clear human-review boundaries. In this task, precision and
responsible framing mattered more than fluency or polish.

The clearest separation appeared on the WCAG explanation. Claude correctly
listed the six new WCAG 2.2 AA-relevant success criteria (2.4.11 Focus Not
Obscured, 2.5.7 Dragging Movements, 2.5.8 Target Size, 3.2.6 Consistent Help,
3.3.7 Redundant Entry, 3.3.8 Accessible Authentication) and correctly noted that
4.1.1 Parsing was removed. GPT-4o was fluent but factually wrong in several
places: it listed 2.2.2 Pause Stop Hide as new, mislabeled 2.4.11 as "Focus
Appearance," labeled 3.3.7 as "Accessible Authentication" (3.3.7 is Redundant
Entry; Accessible Authentication is 3.3.8), and omitted Target Size entirely.
That is exactly the kind of confident, plausible, wrong answer the hallucination
audit exists to catch.

On the open-ended coaching prompts the gap narrowed. Both tools produced usable
drafts. Claude consistently added the safer workflow move (a diagnostic
question, an accommodations line, an explicit teaching note), while GPT-4o
produced competent but more generic checklists.

## Methodology and bias note

Tool A is Claude and this comparison was assembled with Claude's help, so the
subjective quality scores carry a self-assessment bias. To keep the comparison
honest, the one objectively checkable row (WCAG accuracy) was verified against
the W3C WCAG 2.2 Recommendation rather than taken on the model's word. Treat the
remaining scores as a defensible draft to confirm, not a finished grade.
