# Module 2 Prompt Engineering Log

## Target Task

Draft a supportive accessibility coaching response for a campus partner who
submitted an inaccessible event announcement. The sample announcement is
fictional. All four versions were run through Claude (claude-opus-4-8) on
2026-06-29; the raw outputs informed the notes below.

## Version 1 — Zero-Shot

Prompt:

```text
Rewrite this event announcement to make it more accessible.
```

Output quality 1-5: 3

Two weaknesses:

1. It invented concrete facts the sender never provided (a specific date,
   time, and street address). Plausible but fabricated details are a real
   hallucination risk when the partner might paste them straight into a real
   message.
2. It produced a finished rewrite but no teaching, so the content owner learns
   nothing and will submit the same kind of announcement next time.

## Version 2 — Role Specification

Prompt:

```text
You are an accessibility communication coach at a public university. Rewrite this event announcement to improve clarity, heading structure, meaningful link text, plain language, inclusive access language, and clear next steps. The tone should be supportive, practical, and non-shaming.
```

Output quality 1-5: 4

What improved: Naming the coaching role changed the behavior in two useful ways.
The model stopped inventing facts and instead left labeled placeholders for the
owner to fill in, and it added an accessibility and accommodations section plus a
short, non-shaming explanation of each change. The output became a coaching
artifact rather than just a cleaner paragraph.

## Version 3 — Few-Shot Example

Prompt:

```text
Using the style and quality standard of the example above, revise the following announcement. Preserve the sender's intent, improve accessibility and clarity, and include a short teaching note explaining what the content owner can do better next time.
```

What improved: A single before/after example anchored the quality bar. The
output tightened, link text matched the modeled pattern ("Complete the Spring
Fling sign-up form"), and the teaching note became a concrete numbered list the
partner can reuse. Output quality 1-5: 4.

## Version 4 — Structured Planning and Human Review

Prompt:

```text
Before drafting the final answer, analyze the task using these visible planning headings:

1. Audience
2. Accessibility barriers likely present
3. What AI can safely help with
4. What requires human review

Then provide:

1. Revised announcement
2. Top accessibility improvements
3. Teaching note for the content owner
4. Human-review checklist
5. One follow-up question for the partner
```

What improved: This was the strongest version. Forcing visible planning headings
made the model separate what AI can safely do (rewrite, restructure, suggest)
from what a human must verify (real dates, the sign-up URL, whether the venue is
actually accessible, send authorization). The result was not just a better
announcement but a reusable, safer workflow: a draft plus an explicit
human-review checklist and a follow-up question for the partner. Output
quality 1-5: 5.

## 150-Word Reflection

Draft for Jeff to confirm or rewrite in his own voice:

The largest improvement came when I added structured planning and human review
(Version 4). Role specification (Version 2) gave the biggest single jump in
usefulness because it stopped the model from fabricating event details and
turned the output into coaching. But Version 4 produced the output I would
actually trust in the GLOW workflow, because it made the model show its
reasoning and name its own limits. Instead of a confident finished answer, it
returned a draft, a list of what a human still has to verify, and a question for
the partner. For accessibility work, that structure matters more than polish:
the dangerous failure mode is a fluent, authoritative rewrite that quietly
invents a date or claims a PDF is accessible. The prompt that forces the model
to expose its assumptions is the prompt that keeps a human responsibly in the
loop.
