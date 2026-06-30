# Module 2 Forum Responses

Four discussion prompts on the program forum (UA-AI2S/AI-Champions). Drafts below
are grounded in my real Module 2 runs and the two required papers. Review, edit
into my own voice, then post each to the matching thread. Links are in
`instructions.md`.

## Discussion #8 - Post best before/after prompt pair from Task 2

Target task: a supportive accessibility coaching response that rewrites an
inaccessible campus event announcement and teaches the content owner.

Before (V1, zero-shot):

> Rewrite this event announcement to make it more accessible.

After (V4, chain-of-thought plus structure):

> Before drafting the final answer, analyze the task using these visible planning
> headings: (1) Audience, (2) Accessibility barriers likely present, (3) What AI
> can safely help with, (4) What requires human review. Then provide: a revised
> announcement, top accessibility improvements, a teaching note for the content
> owner, a human-review checklist, and one follow-up question for the partner.

What professional task was this written for, and what does the change tell us
about what the model needed? It was written for accessibility communication
coaching - rewriting a partner's announcement while teaching them to do it
themselves. The change from V1 to V4 shows the model did not need more raw
capability so much as more structure and constraints: a visible planning step and
an explicit human-review checklist. V1 even invented a fake date and street
address; V4 stopped fabricating and instead flagged what a human must verify. The
model needed me to separate "draft the language" from "verify the facts," not to
try harder.

Peer reply (to complete): choose a peer's pair, answer their two questions in
3-4 sentences, then run their V1 prompt in my own tool and post a 2-sentence
comparison. (I can run a peer's V1 through Claude for you on request.)

## Discussion #9 - Greatest hallucination risk and verification practice

In my context (accessibility coaching and WCAG guidance), the highest-risk type
in Ji et al.'s taxonomy is extrinsic factual hallucination: a confident,
source-less claim that cannot be verified from any provided source. My outputs
are open-ended guidance, so the dangerous failure is not contradicting a document
but inventing a plausible standard or legal requirement that sounds
institutionally correct. In my own Module 2 tool comparison this happened: GPT-4o
mislabeled WCAG success criterion 3.3.7 as "Accessible Authentication" (3.3.7 is
Redundant Entry; Accessible Authentication is 3.3.8) and dropped Target Size -
fluent and wrong. My routine verification practice is to treat every WCAG,
ADA/Title II, or accommodation claim as unverified until checked against the
primary source (W3C/WAI, UA counsel and policy, the DRC), and never let a
standards claim reach a campus partner on the model's word alone.

## Discussion #10 - Tool comparison pattern

There was no single winner; it varied by task. I ran the five-task protocol
through Claude (Opus 4.8) and GPT-4o. They tied on summarization, the
decline-an-invitation email, and the two-sided argument. They separated only on
the precision tasks. On P1 both got the Transformer citation right, but Claude's
APA was complete (authors, editors, page range) while GPT-4o's was thin. On P3
Claude defaulted to population standard deviation and explicitly flagged the
sample-vs-population choice, while GPT-4o defaulted to sample SD and named a
variable `statistics`, shadowing the module it had just imported. The pattern:
for open-ended writing either tool is fine, but for anything factual or
computational the differences are subtle and consequential, so I match the tool
to the task and verify facts and code regardless of which I use.

## Discussion #11 - Chain-of-thought, scale, and tool choice

Yes, it affects my choices. Wei et al. (2022) show CoT benefits are emergent:
they appear only around 100B parameters and above, and below that scale models
produce "fluent but illogical" chains. That matches what I saw - my
chain-of-thought prompt produced the best-structured output only on a
frontier-scale model (Claude Opus 4.8). So for complex reasoning I will stay on
large, current models and not assume a small or local model reasons better just
because I ask it to think step by step. The deeper lesson from the paper is its
stated limitation: there is "no guarantee of correct reasoning paths," so a
coherent chain can still be wrong. CoT buys transparency and structure, not
correctness, which is why human verification of accessibility and standards
claims stays non-negotiable regardless of model size.
