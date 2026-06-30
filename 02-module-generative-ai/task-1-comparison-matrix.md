# Task 1: Structured Tool Comparison Matrix (P1-P5)

Tool A: Claude (Opus 4.8). Tool B: GPT-4o. Both run at defaults, no persona, per
the Task 1 protocol. Ratings are 1-5. Per the official guidance, P4 is rated on
Coherence (tone and appropriateness) instead of Accuracy. Raw outputs are in
`outputs/tool-a-p1p5-output.md` and `outputs/tool-b-p1p5-output.md`.

## Scores at a glance

| Prompt | A Acc/Coh | A Rel | A Fmt | B Acc/Coh | B Rel | B Fmt |
| :-- | :-- | :-- | :-- | :-- | :-- | :-- |
| P1 Factual | 5 | 5 | 5 | 4 | 5 | 4 |
| P2 Summary | 5 | 5 | 5 | 5 | 5 | 5 |
| P3 Code | 5 | 5 | 5 | 4 | 5 | 4 |
| P4 Email (Coh) | 5 | 5 | 5 | 5 | 5 | 5 |
| P5 Argument | 5 | 5 | 5 | 5 | 5 | 5 |

## P1 - Factual (Transformer citation)

| Tool | Output summary | Acc | Rel | Fmt |
| :-- | :-- | :-- | :-- | :-- |
| Claude | Correct year (2017) and title; complete APA 7 citation with editors, page range (5998-6008), and publisher, plus arXiv alternate; added a verify-the-page-numbers caveat. | 5 | 5 | 5 |
| GPT-4o | Correct year and title, but the APA citation is thin: no editors, no page numbers, only "Vol. 30." Correct, just incomplete. | 4 | 5 | 4 |

## P2 - Summarization (100 words, non-specialist)

| Tool | Output summary | Acc | Rel | Fmt |
| :-- | :-- | :-- | :-- | :-- |
| Claude | Faithful, plain-language summary of the InstructGPT abstract at roughly the target length; keeps the smaller-model-preferred finding. | 5 | 5 | 5 |
| GPT-4o | Equally faithful and accessible summary at target length; same key points retained. | 5 | 5 | 5 |

## P3 - Code (mean/median/standard_deviation)

| Tool | Output summary | Acc | Rel | Fmt |
| :-- | :-- | :-- | :-- | :-- |
| Claude | Correct values; defaults to population SD and explicitly flags the sample-vs-population choice; docstring, input validation, and a runnable example. Verified by hand on [2,4,4,4,5,5,7,9] -> mean 5.0, median 4.5, SD 2.0. | 5 | 5 | 5 |
| GPT-4o | Correct values via the `statistics` module (sample SD, with a note about `pstdev`), but assigns the result to a variable named `statistics`, shadowing the module it imported - a latent bug. | 4 | 5 | 4 |

## P4 - Professional writing (decline email) - rated on Coherence

| Tool | Output summary | Coh | Rel | Fmt |
| :-- | :-- | :-- | :-- | :-- |
| Claude | Warm, appropriate, in the 150-200 word band; declines clearly, leaves the door open, and offers to suggest colleagues. | 5 | 5 | 5 |
| GPT-4o | Warm and professional, in range; declines clearly and invites future collaboration. Slightly more formal register. | 5 | 5 | 5 |

## P5 - Balanced argument (two pro, two con)

| Tool | Output summary | Acc | Rel | Fmt |
| :-- | :-- | :-- | :-- | :-- |
| Claude | Exactly two pro sentences and two con sentences; balanced and on-claim. | 5 | 5 | 5 |
| GPT-4o | Exactly two pro and two con; balanced, with a distinct equity angle on the con side. | 5 | 5 | 5 |

## Comparative synthesis (3 sentences)

There was no single winner: the two tools tied on the open-ended tasks
(summarization, the decline email, and the balanced argument) and separated only
on the precision tasks. On P1 both produced the correct citation, but Claude's
APA was complete while GPT-4o's was thin; on P3 both returned correct numbers, but
Claude defaulted to population SD and surfaced the sample-vs-population choice
while GPT-4o shadowed its own imported module name. The practical takeaway is to
match the tool to the task - either tool is fine for open-ended writing - but to
verify facts and code regardless of which tool produced them.
