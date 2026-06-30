# Module 2 Reading Annotations

Two required readings, annotated against the official guided questions. Answers
are grounded in the source papers (read in full) and connected to the GLOW
accessibility capstone. Draft for Jeff to confirm or adjust in his own voice.

## Reading 1: Wei et al. (2022), Chain-of-Thought Prompting Elicits Reasoning in LLMs

Source: NeurIPS 2022 (arXiv:2201.11903). Authors: Wei, Wang, Schuurmans, Bosma,
Ichter, Xia, Chi, Le, Zhou (Google Research, Brain Team).

**Q1 - What exactly is added to make a prompt a chain-of-thought prompt?**
Chain-of-thought (CoT) prompting changes each few-shot exemplar from a pair of
input and output into a triple of input, chain of thought, and output. The
"chain of thought" is a series of intermediate natural-language reasoning steps
written between the question and the final answer. In Figure 1, standard
prompting shows a question followed directly by the answer; CoT prompting shows
the same question, then a worked rationale (for example, "Roger started with 5
balls; 2 cans of 3 balls each is 6; 5 + 6 = 11"), then the answer. Nothing about
the model is retrained or fine-tuned; only the exemplars in the prompt gain
reasoning steps.

**Q2 - CoT benefits are "emergent." What does this imply for smaller or older models?**
Wei et al. find that CoT only improves performance for sufficiently large models
(around 100B parameters and above); below that scale it does not help and can
make results worse, because small models generate "fluent but illogical" chains
of thought. The implication for practitioners is that CoT is not a universal fix:
on a smaller or older LLM, asking the model to "think step by step" should not be
expected to add reasoning ability. For accessibility coaching, I should reserve
CoT-style prompting for frontier-scale models and not assume a small or local
model reasons better just because I request steps.

**Q3 - Arithmetic, symbolic, or commonsense: which is most analogous to your work?**
Commonsense reasoning is closest to my accessibility work. My tasks are
language-based judgments made under general background knowledge (is this
announcement accessible, is this image decorative, what should the content owner
do next) rather than arithmetic or symbol manipulation. Wei et al. show CoT helps
commonsense benchmarks such as StrategyQA and Date and Sports Understanding,
which suggests structured step-by-step prompting can help my domain, with the
caveat in Q4.

**Q4 - Key limitation of few-shot CoT, and does it apply to your Task 2 use case?**
The authors state plainly that there is "no guarantee of correct reasoning
paths": a chain of thought can look coherent and still be wrong, producing
incorrect answers. They also note CoT does not prove the model is actually
"reasoning," that writing exemplars has a cost, and that the ability only emerges
at large, expensive scale. This applies directly to my Task 2 accessibility
coaching case. My V4 chain-of-thought prompt produced the best-structured output,
but a fluent reasoning chain about WCAG can still state a criterion incorrectly,
which is exactly what GPT-4o did in my tool comparison. CoT improved structure
and transparency, not correctness, so human verification of standards claims
stays mandatory.

**Key terms (in my own words):**

| Term | My definition |
| :-- | :-- |
| Chain-of-thought prompting | Adding worked, intermediate reasoning steps to the prompt exemplars so the model produces a rationale before its final answer. |
| Zero-shot prompting | Asking for the output directly, with no examples and no reasoning steps. |
| Few-shot prompting | Giving the model a handful of input-output examples in the prompt to demonstrate the task before the real query. |
| Reasoning chain | The series of intermediate steps the model writes that lead from the question to the final answer. |
| Emergent ability | A capability absent in smaller models that appears only once a model passes a scale threshold (here, about 100B parameters for CoT). |

## Reading 2: Ji et al. (2023), Survey of Hallucination in Natural Language Generation

Source: ACM Computing Surveys (arXiv:2202.03629).

**Q1 - How is hallucination formally defined? Relationship between faithfulness and factuality?**
Ji et al. define hallucination as generated content that is "nonsensical or
unfaithful to the provided source content" - text that reads as fluent and
natural but is not grounded in, or is contradicted by, the source. Faithfulness
is staying consistent and truthful to the source, and is the direct antonym of
hallucination. Factuality is being based on actual fact. Following Maynez et al.,
the paper separates the two by what counts as the "fact": faithfulness is
measured against the source input, factuality against world knowledge. Output can
be faithful to a source yet not factual (if the source is wrong), and the reverse.

**Q2 - Intrinsic vs extrinsic, with one academic example of each.**
An intrinsic hallucination contradicts the source; an extrinsic hallucination
cannot be verified from the source (neither supported nor contradicted).
Intrinsic example: an AI summary states a job description requires five years of
experience when the description says three. Extrinsic example: an AI-drafted
advising note adds a credit requirement that appears nowhere in the catalog - it
sounds plausible but cannot be traced to the source. Ji notes extrinsic
hallucination is not always wrong (it may be correct world knowledge) but is
treated with caution because it is unverifiable.

**Q3 - Which cause of hallucination is hardest to mitigate through prompt engineering alone?**
The hardest to fix by prompting is source-reference divergence baked into the
training data (Section 3.1), together with the training and inference causes
(Section 3.2). These sit upstream of the prompt: the model learned to generate
content not grounded in its source because of how the data was collected and how
likelihood-maximization training and decoding behave. A better prompt can reduce
surface triggers, but it cannot undo what the model internalized during training,
which is why external verification and retrieval grounding matter more than
prompt wording for high-stakes claims.

**Q4 - Which hallucination type must you most guard against in your professional tasks?**
Extrinsic factual hallucination is my top risk in accessibility work. Most of my
outputs (coaching notes, WCAG explanations, remediation guidance) are open-ended,
so the dangerous error is a confident, source-less claim - a fabricated success
criterion or an overstated legal obligation - that sounds institutionally correct
but is in no source. My Module 2 comparison already caught one: GPT-4o mislabeled
WCAG SC 3.3.7. The routine defense is to treat every standards or legal claim as
unverified until checked against the primary source (W3C/WAI, UA counsel and
policy, DRC), never the model's word.

**Key terms (in my own words):**

| Term | My definition |
| :-- | :-- |
| Hallucinations (NLG) | Fluent generated text that is unfaithful to, or unverifiable against, the source content. |
| Intrinsic hallucination | Output that directly contradicts the source. |
| Extrinsic hallucination | Output that cannot be confirmed or denied from the source; unverifiable added content. |
| Faithfulness | Staying consistent and truthful to the provided source; the opposite of hallucination. |
| Factually grounding | Anchoring output in actual fact or a verifiable source so claims can be checked. |
