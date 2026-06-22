# Module 1 Reflection Journal Entry

Jeff Bishop | IT Accessibility Consultant | University of Arizona

<!-- DRAFT — review and personalize before finalizing. The three prompts
     below match the official Module 1 Activities Template (A, B, C).
     Target: 80-130 words per prompt. Replace bracketed notes with your
     own words. Underline or flag one sentence you want to discuss. -->

---

## Prompt A

*What assumption about AI did this module confirm, challenge, or
complicate? Describe the assumption and what changed.*

Before this module, I assumed AI tools were either clearly capable or
clearly limited — that the failure modes were obvious enough that a
careful user would catch them. After working through the technical
vocabulary and running the five-prompt protocol, I now understand the
capability-reliability gap more precisely: the same statistical
pattern-matching that makes LLMs fluent makes them structurally
unreliable for high-stakes claims. The fluency is not a signal of
accuracy. A response that sounds authoritative and well-organized can
still be wrong in ways that are invisible to a reader without domain
expertise. For accessibility work — where partners already lack
confidence in their own judgment — that is not a small risk. It is the
central design problem.

---

## Prompt B

*What one aspect of how LLMs work technically surprised you most, and
why does it matter for your professional context?*

I was surprised to learn that LLMs do not look up information — they
predict which tokens are statistically likely to follow the tokens
before them, trained on patterns in text rather than on verified facts.
This matters for my work because it explains a failure mode I had
observed but not fully understood: a model can produce a confident,
fluent WCAG citation that is subtly wrong, not because the model is
"lying," but because the wrong criterion number appeared in similar
contexts during training and looked right statistically. Campus partners
who receive that citation have no reliable way to detect the error
without independent verification. That is not a workflow edge case. That
is the baseline condition for every AI-assisted accessibility output I
am designing workflows around.

---

## Prompt C

*Name one specific recurring task in your role that you now think could
be affected by current AI. Be concrete: name the task, identify the AI
mechanism, and describe one realistic impact scenario — positive or
cautionary.*

One task I perform regularly is drafting accessibility coaching responses
for campus partners who submit inaccessible event announcements,
documents, or course materials. Based on what I learned, the
token-prediction mechanism underlying LLMs could help generate
first-draft coaching language more quickly — reducing the time I spend
on routine rewrites and freeing capacity for the harder cases that
require genuine expertise. The cautionary scenario is that a partner
begins using the same tool without my review and receives a coaching
response that misidentifies the accessibility issue, cites the wrong
WCAG criterion, or omits the accommodation disclosure requirement. The
output will look exactly like a correctly reviewed response. The GLOW
Lab's human review gate is not a nice-to-have for this reason — it is
the only mechanism that separates a useful tool from a liability.

---

## Open Questions to Bring to the Synchronous Session

- How much does the scarcity of high-quality disability and
  accessibility content in LLM training data affect reliability for
  this domain specifically — and is there any evidence on this?
- How do we design a workflow that builds partner confidence without
  also building unwarranted confidence in AI output?
- At what point does a helpful AI prompt become an accessibility
  specialist decision that a non-specialist should not be making alone?

---

## Follow-Up Actions

- [x] Complete the LLM Exploration Log with the 5 official prompts.
- [ ] Post in Discussion 2 (introduce yourself).
- [ ] Post in Discussion 4 (GitHub account name).
- [ ] Upload concept map image and post in Discussion 6.
- [ ] Complete reading annotations for Bommasani et al. and AI Index.
