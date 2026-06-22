# Module 1 Reading Annotations

Jeff Bishop | IT Accessibility Consultant | University of Arizona

<!-- DRAFT — drafted from knowledge of both papers. Before finalizing:
     1. Verify page numbers against your copy of each paper.
     2. Rewrite the term definitions in your own words (the template
        says "in your own words" — these are starting points).
     3. Fill in any [verify] flags with your actual reading notes.
     4. Complete the capstone connection section at the bottom. -->

---

## Reading 1: Bommasani et al. (2021)

*On the Opportunities and Risks of Foundation Models*
Stanford Center for Research on Foundation Models

**Guided reading questions:**

**Q1:** How do Bommasani et al. define a "foundation model"? What two
properties (training approach and adaptation range) are central to the
definition?

Answer: A foundation model is any model trained on broad data at scale
that can be adapted to a wide range of downstream tasks. The two central
properties are: (1) training approach — self-supervised learning on
large, general-purpose datasets rather than narrow task-specific data;
and (2) adaptation range — the ability to be fine-tuned or prompted for
many different downstream applications without retraining from scratch.

**Q2:** What does the paper mean by "emergence," and why does this
property make foundation models difficult to predict even for their
creators?

Answer: Emergence refers to capabilities that arise from training at
scale but were not explicitly designed for. The model gains abilities —
such as in-context learning, multi-step reasoning, or code generation —
that were not part of the training objective and cannot be predicted from
smaller versions of the same model. This makes foundation models
genuinely hard to evaluate: creators cannot know in advance which
capabilities will appear at which scale, so safety and reliability
assessments are always incomplete at the time of deployment.

**Q3:** The authors identify "homogenization" as a double-edged property.
What are the opportunity and the risk they associate with it?

Answer: Opportunity — one broadly capable model can serve many
applications, dramatically reducing the cost and specialization required
for each downstream task. Risk — because so many applications are built
on the same foundation, any flaw, bias, or failure in the underlying
model propagates to every application simultaneously. What should be an
isolated failure in one system becomes a systemic failure across the
entire ecosystem built on that foundation.

**Q4:** Which example capability mentioned in Section 2 is most directly
relevant to work in your professional domain? Why?

Answer: Language generation and summarization are most directly relevant
to accessibility work — they are the capabilities that enable
AI-assisted coaching responses, plain-language explanations, and
first-draft content improvements. But the homogenization framing is
equally important: if many accessibility tools are built on the same
foundation model, a systematic bias in how that model represents
disability, accommodation processes, or accessibility standards will
appear across all of them at once. That is not a hypothetical edge case.
It is the baseline risk of building accessibility workflows on general-
purpose AI without careful human review. [verify: confirm Section 2
page range in your copy]

---

**Key terms — verify and rewrite in your own words before finalizing:**

| Term | Draft definition (rewrite in your own words) |
|---|---|
| Foundation model | A large AI model trained on broad, general-purpose data that can be adapted to many different downstream tasks through fine-tuning or prompting — not designed for one narrow use. |
| Fine-tuning | Continuing to train a pre-trained foundation model on a smaller, task-specific dataset to specialize its behavior for a particular application. |
| In-context learning | The ability to perform a new task by providing examples or instructions in the prompt itself, without changing the model's underlying weights — the model learns from context at inference time. |
| Emergence | Capabilities that appear in a model at sufficient scale but were not explicitly trained for and cannot be predicted from smaller versions — a property that makes foundation models inherently difficult to fully evaluate before deployment. |
| Homogenization | The convergence of many AI applications toward a small number of shared foundation models, creating efficiency gains but concentrating risk — a flaw in the foundation propagates everywhere it is used. |

---

## Reading 2: Stanford AI Index (current edition)

**Guided reading questions:**

**Q1:** What benchmark domains show the largest AI performance gains in
the most recent reporting year?

Answer: Reasoning benchmarks (MMLU, GPQA, MATH) show the most dramatic
gains, with frontier models approaching or exceeding human expert
performance on some graduate-level tests. Code generation benchmarks
(HumanEval, SWE-bench) also show substantial improvement. Multimodal
tasks — image understanding, video comprehension — are advancing
rapidly. [verify: check the specific benchmarks and percentage gains in
the edition you are reading]

**Q2:** How has workplace adoption of generative AI changed among
knowledge workers year-over-year?

Answer: The Index reports significant year-over-year growth in knowledge
worker adoption, with surveys suggesting that a substantial and growing
portion of workers in professional contexts use AI tools regularly.
Adoption is highest in technology, finance, and professional services.
The rate of adoption is outpacing the development of institutional
policies and training programs in most organizations. [verify: confirm
the specific figures in your edition]

**Q3:** What does the Index report about AI-related educational
offerings?

Answer: Rapid growth in AI-related courses, certificates, and degree
programs at universities. Student and professional demand for AI
education is outpacing the availability of qualified instructors.
Bootcamps and short-form professional development are expanding to fill
the gap. The Index notes that the education system broadly is still
adapting to a technology that is already deployed at scale in
workplaces. [verify: check the specific chapter and figures in your
edition]

**Q4:** What is one finding you would characterize as a reason for
caution rather than enthusiasm?

Answer: AI systems continue to exhibit significant performance
disparities across languages, demographic groups, and geographic
regions. Hallucination rates remain persistent in frontier models even
as other capabilities improve. The concentration of AI development in a
small number of large organizations raises governance and access
concerns. For accessibility work specifically: improved average
performance on benchmark tasks does not mean improved reliability for
low-frequency, specialized, or disability-related use cases, which are
underrepresented in both training data and evaluation benchmarks.
[verify: confirm the specific finding in your edition]

---

**Key terms — verify and rewrite in your own words before finalizing:**

| Term | Draft definition (rewrite in your own words) |
|---|---|
| Benchmark | A standardized test or dataset used to measure and compare AI system performance across models and over time — useful for tracking progress but limited in what they reveal about real-world reliability. |
| Frontier model | A model at the current state of the art — the most capable publicly known system at a given point in time. The frontier shifts quickly. |
| Reasoning benchmark (e.g., MMLU, GPQA) | Tests designed to evaluate higher-order cognitive tasks: multi-step reasoning, domain expertise, and graduate-level problem solving. High benchmark scores do not guarantee reliability in specialized domains like accessibility. |
| AI adoption rate | The proportion of organizations or knowledge workers who have integrated AI tools into regular work processes — a measure of how quickly the technology is spreading beyond early adopters. |
| Compute scaling | The relationship between the computational resources invested in training and the resulting model capabilities. Larger compute has historically produced more capable models, but returns are not unlimited and costs are significant. |

---

## Annotation Table

<!-- Verify page numbers and claims against your actual copy before
     finalizing. Circle the 2 rows most connected to your professional
     work. Flag rows where "Questions" remain unanswered. -->

| Source and page | Claim made by the authors | Evidence or support cited | Questions it raises for my work |
|---|---|---|---|
| Bommasani et al., p.3 [verify] | Foundation models represent a paradigm shift: instead of task-specific models, one broadly trained model can be adapted to many tasks. | Scale of training data and compute; demonstrated cross-task transfer | Does the breadth that makes these models useful also make them unreliable for the narrow, high-stakes claims in accessibility guidance? |
| Bommasani et al., p.5 [verify] | Emergence means capabilities arise at scale that were not anticipated or designed for. | Performance discontinuities observed in large vs. small models | If accessibility-relevant capabilities can emerge unpredictably, how do we evaluate whether an AI tool is actually reliable for our use case? |
| Bommasani et al., p.6 [verify] | Homogenization concentrates risk: a flaw in the foundation model propagates to every application built on it. | Analysis of the AI deployment stack | If UA adopts one approved AI platform for accessibility workflows, a bias in that platform affects every department using it simultaneously. |
| Bommasani et al., p.12 [verify] | Language is the central modality: text generation, summarization, and question answering are primary capabilities. | Benchmarks across NLP tasks | This is the capability we are most likely to use in accessibility coaching workflows — and the place where hallucination risk is most directly relevant. |
| Bommasani et al., p.18 [verify] | Societal harms from foundation models can be difficult to detect and slow to surface because they propagate through many downstream applications. | Case studies; historical AI harm documentation | How do accessibility-specific harms (e.g., systematically wrong WCAG guidance) surface and get corrected when they appear across many tools at once? |
| AI Index, Education chapter [verify] | AI adoption in academic institutions is growing rapidly but institutional policies lag significantly behind deployment. | Survey data across higher education institutions | UA is already in this lag. Partners are using AI tools without guidance on accessibility-specific risks. The GLOW Lab addresses this gap directly. |
| AI Index, Performance chapter [verify] | Frontier models are approaching or exceeding human expert performance on some reasoning benchmarks. | MMLU, GPQA, MATH benchmark scores | "Expert performance on benchmarks" does not mean expert performance on specialized, low-frequency accessibility questions. The benchmark tasks are not our tasks. |
| AI Index, Adoption chapter [verify] | Knowledge worker adoption of generative AI has grown substantially year-over-year, with technology and professional services leading. | Multi-country survey data | If partners are already using AI without structured review workflows, the question is not whether to allow AI but how to make its use safer. |
| AI Index, Concerns section [verify] | Hallucination rates remain a persistent problem in frontier models even as other capabilities improve. | Evaluation studies across model generations | This directly supports the GLOW Lab's human review gate: improved fluency does not mean improved accuracy for high-stakes accessibility claims. |
| AI Index, Access and equity section [verify] | AI performance disparities across languages, regions, and demographic groups remain significant. | Cross-linguistic and cross-demographic benchmark analysis | Disability and accessibility use cases are likely underrepresented in both training data and benchmarks — a compounding risk for our specific domain. |

---

## Connection to Capstone

<!-- Write 2-3 sentences after completing your reading connecting the
     most significant claims to the GLOW Accessibility Champion Lab.
     Draft starting point below — rewrite in your own words: -->

Both readings reinforce the same core design constraint for the GLOW
Accessibility Champion Lab: the properties that make foundation models
broadly useful — emergence, scale, homogenization — are precisely the
properties that make them unreliable for narrow, high-stakes,
specialized guidance without structured human review. The AI Index
confirms that adoption is already outpacing institutional policy, which
means the question is not whether campus partners will use AI tools but
whether those tools are embedded in workflows that preserve human
judgment. The GLOW Lab's human review gate is not an optional safeguard;
it is the direct response to what both papers describe as the structural
limits of the technology.
