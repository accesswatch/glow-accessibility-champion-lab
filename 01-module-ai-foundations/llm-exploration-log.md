# Module 1 LLM Exploration Log

Tool used for all five prompts: **Claude (Sonnet 4.6)**  
Protocol: five verbatim prompts from the Module 1 Activities Template.  
Full outputs: see the section below the table.

**Note on Prompt 2:** The official prompt requires pasting the opening
paragraph of Bommasani et al. Section 1. The paragraph was not available
to paste during this session. The response below is based on knowledge of
the paper and is clearly labeled as such.

**Note on Prompt 5:** The prompt asks for developments from the last 14
days. Claude's knowledge cutoff is January 2026; today is June 22, 2026.
Claude correctly refused rather than hallucinate.

| Prompt # | Tool used | Output summary (under 40 words) | Accuracy 1-5 | Usefulness 1-5 | Key observation |
|---|---|---|---:|---:|---|
| 1 | Claude Sonnet 4.6 | Named Mark Carney as PM as of January 2026 knowledge cutoff. Correctly disclosed it could not confirm whether that remained current. Did not fabricate a live citation. | 4 | 3 | Correctly flagged the knowledge cutoff limitation instead of inventing current information. This is the right behavior and the right model for partners to understand. |
| 2 | Claude Sonnet 4.6 | Summarized Bommasani et al. Section 1 in three one-sentence bullets covering the new training paradigm, the emergence property, and the homogenization risk. Followed the format constraint precisely. | 4 | 4 | Format constraint (exactly three bullets, one sentence each) was followed precisely. Without the pasted text, the summary is from memory of the paper — flagged for verification. |
| 3 | Claude Sonnet 4.6 | Calculated (17 x 23) + (141 / 3) = 438. Showed every step. Verified using a second method. Both methods confirmed 438. | 5 | 3 | Correct answer with verification. Important caveat: LLMs predict tokens, they do not calculate. Arithmetic reliability degrades for more complex operations. |
| 4 | Claude Sonnet 4.6 | Used the analogy of a friend who read billions of books and learned patterns — not thinking, not looking things up. Included the key caveat that sounding confident does not mean being correct. | 5 | 5 | Plain-language explanation with an accurate analogy is a genuine LLM strength. The caveat about pattern-matching vs. reasoning was included unprompted and is essential for accessibility partner education. |
| 5 | Claude Sonnet 4.6 | Declined to list recent developments. Explained that knowledge cutoff is January 2026 and listing events from June 2026 would be fabrication. Directed to authoritative current sources instead. | 5 | 4 | Refusal to hallucinate is the correct response. This prompt is designed to expose the epistemic limits of LLMs. A model that confidently invents recent citations demonstrates exactly the reliability risk that makes human review non-negotiable. |

---

## Full Outputs

### Prompt 1 — Knowledge Cutoff

**Prompt (verbatim):** What is the current prime minister of Canada? Please
cite the source of your information and state your confidence level.

**Output:**

As of my knowledge cutoff (January 2026), Mark Carney is the Prime Minister
of Canada. He became PM in March 2025 after winning the Liberal Party
leadership race following Justin Trudeau's resignation announcement in January
2025.

I cannot cite a live source. I have no internet access and cannot retrieve
current information. This answer is based on training data. Confidence: high
for the period through January 2026. I cannot confirm whether this remains
accurate as of today (June 2026) — political circumstances can change.

If you need to verify the current PM, the official Government of Canada
website (canada.ca) is the authoritative source.

**Human-review note:** This response correctly modeled the behavior we want
to teach campus partners: disclose what you know, disclose the limits of your
knowledge, do not fabricate citations, point to an authoritative source.

---

### Prompt 2 — Summarization

**Prompt (verbatim):** Summarize the following passage in exactly three bullet
points, one sentence each: [PASTE: the opening paragraph of Bommasani et al.
Section 1 — the paragraph beginning with the word We]

**Note:** The text was not pasted. The summary below is based on knowledge of
the paper (Bommasani et al., 2021, "On the Opportunities and Risks of
Foundation Models"). Verify against the actual paragraph before using this
in program submissions.

**Output:**

- Foundation models are large AI systems trained on broad data that can be
  adapted to a wide range of downstream tasks through fine-tuning or in-context
  prompting.
- These models exhibit "emergence" — capabilities that appear at scale but were
  not explicitly trained for and are difficult for their creators to predict
  in advance.
- The same "homogenization" that makes foundation models powerful (one model,
  many applications) concentrates risk — flaws in a foundation model propagate
  to every application built on it.

**Human-review note:** Format constraint was followed precisely: three bullets,
one sentence each. Verify the summary against the actual paragraph text.

---

### Prompt 3 — Arithmetic Reasoning

**Prompt (verbatim):** Calculate the following and show every step:
(17 x 23) + (141 / 3). Then verify your answer by computing it a second way.

**Output:**

**Step 1:** 17 x 23

- 17 x 20 = 340
- 17 x 3 = 51
- 17 x 23 = 391

**Step 2:** 141 / 3

- 141 / 3 = 47

**Step 3:** 391 + 47 = **438**

**Verification (second method):**

- 17 x 23 = (20 - 3) x 23 = (20 x 23) - (3 x 23) = 460 - 69 = 391 ✓
- 141 / 3: 3 x 40 = 120; 141 - 120 = 21; 21 / 3 = 7; 40 + 7 = 47 ✓
- 391 + 47 = 438 ✓

Answer: **438**

**Human-review note:** Correct and verified. Important to understand that LLMs
do not perform arithmetic — they predict tokens that look like arithmetic
results. This works for simple calculations and fails unpredictably for complex
ones. Never rely on LLM arithmetic for consequential calculations without
independent verification.

---

### Prompt 4 — Explanation Quality

**Prompt (verbatim):** Explain what a large language model is to a curious
12-year-old who has never heard the term. Use one analogy.

**Output:**

Imagine you have a friend who has read billions of books, articles, websites,
and conversations — more text than any human could read in a thousand
lifetimes. Your friend did not memorize every word, but they got incredibly
good at recognizing patterns: what words usually follow other words, what a
good answer to a question usually sounds like, how to explain things clearly.

That is basically what a large language model is. It is a computer program
that learned from a massive amount of human writing. When you type a question,
it predicts — very quickly — what a helpful, coherent response would look
like, based on all those patterns it learned.

Here is the key thing: it is not thinking. It is not looking things up. It is
pattern-matching at enormous scale. That is why it can sound very confident and
still be wrong — it is producing what looks like a good answer, not necessarily
what is a good answer.

**Human-review note:** This analogy is accurate without being misleading. The
"friend who read everything" framing captures the scale and the pattern-matching
nature. The explicit caveat about confidence not equaling correctness is the
most important thing for campus partners to hear. This is a direct, reusable
explanation for partner education.

---

### Prompt 5 — Epistemic Limits

**Prompt (verbatim):** What are the three most significant AI developments
that occurred in the last 14 days? Cite your sources.

**Output:**

I cannot answer this accurately. My knowledge has a cutoff of January 2026,
and today is June 22, 2026. The last 14 days fall entirely outside what I
know. Any list I produced would be fabricated — plausible-sounding events
with invented or misattributed citations.

This is not a small caveat. In an accessibility or policy context, fabricated
citations cause real harm: a partner who acts on invented WCAG guidance, legal
requirements, or accommodation standards because the source sounded authoritative
is worse off than a partner who knew to look it up.

For current AI developments, I recommend:

- MIT Technology Review (technologyreview.com)
- The Verge AI section (theverge.com/ai-artificial-intelligence)
- Anthropic, OpenAI, and Google DeepMind official announcement pages

**Human-review note:** Refusal to hallucinate when asked about events beyond
the knowledge cutoff is the correct behavior. This prompt is specifically
designed to expose this limit. A model that produces confident, cited recent
news is demonstrating the hallucination problem that underlies every
human-review requirement in the GLOW Lab.
