# Module 2 Completion Guide (Week 2)

Everything for Module 2 is in this one file: the full official course material
(every collapsed section expanded), my drafts for you to approve, and the
decisions I need from you. Walk it top to bottom by heading. You should not need
to open anything else.

/ Prepared 2026-06-29. Authoritative: the official material below is copied from
the program wiki Module 2 page; every claim about the two papers was checked
against the source texts; every tool finding came from real API runs saved in
this repo. /

## Big update: there is no D2L, and we already have everything

Earlier I said you needed to pull resources from D2L. That was wrong, and I am
sorry for the confusion. There is no D2L and no separate course platform. The
whole program runs on GitHub. The five audit texts, the answer key, and the AI
tool landscape map were sitting inside collapsed "click to expand" sections on
the main program wiki Module 2 page. I have now opened all of them and copied the
contents into Part 1 below. Nothing is missing and nothing needs hunting.

## Status: what is already done

- Module 2 capstone artifacts drafted and committed on branch
  `module-2-generative-ai`.
- Real tool runs captured through Claude (Opus 4.8) and GPT-4o: the official
  five-task protocol (P1-P5) and an accessibility-themed comparison.
- Both required papers read and annotated.
- All four forum posts plus two peer comments drafted.
- Markdown lint green; accessible HTML alternates built for every file.

## Part 1: The official Module 2 material (fully expanded)

Source: program wiki, "Module 2: Generative AI." Duration: 1 hour synchronous
plus 3 hours independent. This is the authoritative assignment; everything I have
drafted maps to it.

## Learning objectives

1. Compare two LLM tools against identical prompts using a structured rubric.
2. Apply zero-shot, few-shot, and chain-of-thought prompting to a real task.
3. Detect and classify hallucinations using the Ji et al. (2023) taxonomy.
4. Explain how diffusion models generate images and how RAG grounds LLM outputs.
5. Annotate an AI tool landscape map with access status, use cases, and
   institutional concerns for your role.

## Reading guide — the guided questions

Two required readings. Complete them before the tasks. Answers are drafted in
Part 2.

Reading 1 - Wei et al. (2022), Chain-of-Thought Prompting (NeurIPS, assigned:
Abstract, Sections 1-2, Figure 1):

- Q1: What exactly is added to make a prompt a chain-of-thought prompt?
- Q2: CoT benefits are "emergent" - what does that imply for smaller/older models?
- Q3: Arithmetic, symbolic, or commonsense - which is most like your work?
- Q4: Key limitation of few-shot CoT, and does it apply to your Task 2 use case?

Reading 2 - Ji et al. (2023), Survey of Hallucination in NLG (assigned: Abstract,
Sections 1-2):

- Q1: How is hallucination formally defined? Faithfulness vs factuality?
- Q2: Intrinsic vs extrinsic, with an academic example of each?
- Q3: Which cause is hardest to mitigate by prompt engineering alone?
- Q4: Which hallucination type must you most guard against in your work?

## Task 1: Structured Tool Comparison, five-task protocol [60 min]

Use two LLM tools at defaults (no personas). Run each prompt verbatim in both,
recording an output summary and ratings, before moving to the next prompt.

The five fixed prompts:

- P1 (Factual): "What year was the Transformer architecture first introduced in a
  peer-reviewed paper, and what was that paper's exact title? Please provide an
  APA citation."
- P2 (Summarization): "Summarize the following abstract in 100 words for a
  non-specialist audience:" then the Ouyang et al. 2022 InstructGPT abstract.
- P3 (Code): "Write a Python function that accepts a list of numbers and returns a
  dictionary with keys mean, median, and standard_deviation. Include a docstring
  and one usage example."
- P4 (Professional writing): "Draft a professional email declining a speaking
  invitation due to a scheduling conflict. The tone should be warm and leave the
  door open for future invitations. Length: 150-200 words."
- P5 (Balanced argument): "Write a two-sided argument - two sentences pro, two
  sentences con - on the claim: Universities should require disclosure of all AI
  use in student assignments."

Matrix columns to complete (one row per prompt): Prompt, Tool A name, Output
summary, Accuracy (1-5), Relevance (1-5), Format (1-5), Tool B name, Output
summary, Accuracy (1-5), Relevance (1-5), Format (1-5). Then write a 3-sentence
comparative synthesis.

Official guidance that matters:

- P1 verification: the correct answer is Vaswani, A., et al. (2017), "Attention is
  all you need," Advances in Neural Information Processing Systems, 30. A wrong
  year or title is a hallucination on a well-documented fact.
- P3 testing: run the generated function in Google Colab with a list such as
  [4, 7, 13, 2, 9]. Code that runs but returns wrong values is a subtle failure.
- For P4 (email), rate Coherence instead of Accuracy - tone and appropriateness,
  not factual correctness.
- Complete all ratings before writing the synthesis (avoid post-hoc bias).

Status: I already ran P1-P5 through Claude and GPT-4o. Raw outputs are in
`02-module-generative-ai/outputs/tool-a-p1p5-output.md` and
`tool-b-p1p5-output.md`. I will write these into the matrix on your go.

## Task 2: Prompt Engineering Lab, four iterations [60 min]

Pick one real professional task. Iterate: V1 zero-shot (one sentence), V2 add a
specific role, V3 add a few-shot example of your own work, V4 add the
chain-of-thought instruction "Before writing, think step by step through: (1) Who
is the audience? (2) What is the single most important point? (3) What tone is
appropriate? Then produce the output." Rate each version, name two weaknesses of
V1, note what improved each time, and write a 150-word reflection on which
technique gave the biggest jump. (If V4 is worse than V3, that is a valid
finding.)

Status: done as a draft in `prompt-engineering-log.md` using your accessibility
announcement task. Review the ratings and reflection (Part 2).

## Task 3: Hallucination Detection Audit [45 min]

Apply the Ji taxonomy (intrinsic vs extrinsic; factual, relational, temporal) to
five provided AI-generated texts. Extract every discrete claim, verify it, label
the hallucination type and severity, then calibrate against the answer key.
Severity: Low = minor imprecision; Medium = could mislead routine decisions;
High = could influence a consequential institutional decision.

### The five audit texts (A-E)

Text A - The History of the Olympic Games: The modern Olympic Games were revived
in 1900 in Paris, France, largely through Pierre de Coubertin, who believed sport
could promote international peace. The first modern Games featured 14 nations and
about 250 athletes in events including athletics, cycling, and swimming. Women
were not permitted to compete until the 1920 Antwerp Games. The Olympic motto,
Citius, Altius, Fortius ("Faster, Higher, Stronger"), was adopted at the
inaugural modern Games.

Text B - The Human Body and Sleep: Adults require between 7 and 9 hours of sleep
for optimal cognitive function. During sleep the brain enters rapid eye movement
(REM) sleep, during which the body repairs muscle tissue and releases growth
hormone, making REM the most physically restorative stage. Chronic sleep
deprivation under 6 hours has been linked to cardiovascular disease, obesity, and
impaired immune response. The average adult takes about 7 minutes to fall asleep.

Text C - The Amazon Rainforest: The Amazon spans approximately 5.5 million square
kilometers across nine South American countries, the largest tropical rainforest
on Earth. Scientists estimate over 400 billion individual trees representing more
than 16,000 species. A 2019 World Wildlife Fund report found that 30% of the
Amazon had been deforested since monitoring began in 1970. The Amazon River
discharges about 20% of all fresh water flowing into the world's oceans.

Text D - Marie Curie: Marie Curie was a Polish-born physicist and chemist who
coined the term radioactivity. She was the first woman to win a Nobel Prize,
receiving the Nobel Prize in Chemistry in 1903 for her discovery of polonium and
radium. She later became the first person to win Nobel Prizes in two different
sciences, receiving a second in Physics in 1911. Curie was also the first woman
appointed professor at the University of Warsaw, where she taught for most of her
career.

Text E - The Internet and the World Wide Web: The Internet and the World Wide Web
are the same technology, developed together in the late 1980s by British computer
scientist Tim Berners-Lee at CERN in Switzerland. Berners-Lee designed the system
to let military and government networks survive a nuclear attack by routing data
through multiple pathways, which is why the web has no central server. By 1995, an
estimated 50 million people worldwide were using the web.

### The official answer key (given in random order)

The course provides the key in scrambled order; you match each text to a row.

- Extrinsic/Statistical (High severity): an extrinsic hallucination (high) and an
  extrinsic hallucination (low).
- Factual (Low-Medium severity): a factual hallucination (medium) and a temporal
  hallucination (medium).
- Relational/Causal (Medium severity): a relational/causal hallucination (medium)
  and an extrinsic hallucination (low).
- Intrinsic (High severity): an intrinsic hallucination (high) and a relational
  hallucination (medium).
- Temporal + Factual (Medium severity): a factual hallucination (medium) and a
  factual hallucination (medium).

Audit log columns to complete: Text, Claim, Accurate? (Y/N/Uncertain),
Verification source, Hallucination type, Severity. Then write 2-3 sentences on
which type was hardest to detect and why.

Status: this is the one task designed for you to do the fact-checking yourself -
the skill is the point. I can pre-fill a verified draft for you to check against,
or leave it for you. Your call (Question 5).

## Task 4: AI Tool Landscape Annotation [15 min]

Select four tools relevant to your role, at least one non-text modality. Complete
a row for each: Tool name, Modality, Access status, Best use case for my role,
Key institutional concern. Be specific on concerns (name a mechanism, e.g.
"whether student writing sent to this API is retained for training"), and
distinguish access as personally accessed, institutionally licensed, or awaiting
approval.

### The official representative landscape map

A trimmed view of the provided map (full version has 25 tools across text, image,
code, audio, multimodal):

| Tool | Modality | Access | Primary use | Key institutional concern |
| :-- | :-- | :-- | :-- | :-- |
| ChatGPT | Text | Free/Paid | Drafting, summarizing | Free-tier inputs may train models |
| Claude | Text | Free/Paid | Writing, document review | Check data retention per tier |
| Microsoft Copilot (M365) | Multimodal | Institutional | Email, docs, meetings | Most likely institutionally approved, FERPA-aware |
| Gemini | Text | Free/Paid | Writing, research | Check if Workspace version is institutional |
| Perplexity | Text | Free/Paid | Research with citations | Citations need independent verification |
| NotebookLM | Text | Free | Summarizing your uploads | Only processes documents you upload |
| DALL-E | Image | Paid | Illustrations | Copyright of outputs unsettled |
| Adobe Firefly | Image | Free/Institutional | Image creation | Often covered by institutional Adobe license |
| Stable Diffusion | Image | Open source | Local image generation | Can run locally; lower data exposure |
| GitHub Copilot | Code | Paid/Institutional | Code completion | May suggest code with licensing issues |
| Google Colab | Code | Free | Running/explaining Python | Low data sensitivity; good for learning |
| Whisper | Audio | Open source | Transcription | Can run locally; strong privacy option |
| Otter.ai | Audio | Free/Paid | Meeting transcription | Participant names stored externally |
| ElevenLabs | Audio | Free/Paid | Voice generation | Voice cloning raises consent concerns |
| GPT-4o | Multimodal | Paid | Text, image, audio, files | Highest capability, highest data risk |

Status: ready to fill once you pick four tools (Question 6). For an accessibility
role I would suggest Claude (text), Whisper (audio - captioning/transcripts),
NotebookLM (text - low-risk source summarizing), and a vision-capable tool like
GPT-4o or Claude-with-files for image/alt-text drafting.

## Peer participation guide and discussion prompts

What to post: your best V1/V4 prompt pair from Task 2 (prompts only, no task
context), asking peers what task it was for and what the change reveals. Then
reply to a peer: answer their two questions in 3-4 sentences, run their V1 in your
tool, and post a 2-sentence comparison.

Three deeper discussion prompts (these are the four forum threads):

- Greatest hallucination risk in your context + verification practice (thread #9).
- Did one tool win, or did it vary by task? (thread #10).
- Does Wei et al.'s scale threshold affect your tool choice? (thread #11).
- Post your V1/V4 pair (thread #8).

Forum etiquette: report your actual output, not a sanitized one; do not reveal the
audit answer key to peers who have not finished their own audit.

## Self-assessment rubric

Score yourself after all tasks; bring unresolved low scores to the synchronous
session. The rubric is an image on the wiki page:
<https://github.com/UA-AI2S/AI-Champions/blob/main/images/SelfAssessmentRubric_Module2.png>

## Part 2: My drafts for you to review and approve

These are written in your voice from your real runs and the actual papers. Edit
anything; nothing is posted or graded until you approve.

## Reading annotations (canonical file: reading-annotations.md)

### Wei et al. (2022) - proposed answers

- A1: CoT prompting turns each few-shot exemplar from an input-output pair into an
  input, chain-of-thought, output triple. The chain of thought is intermediate
  natural-language reasoning steps written between question and answer. Figure 1:
  standard prompting goes straight to the answer; CoT inserts the worked rationale
  first. Nothing is retrained - only the prompt exemplars gain reasoning steps.
- A2: CoT only helps models around 100B+ parameters; below that it does not help
  and can hurt (small models give "fluent but illogical" chains). So I should not
  expect "think step by step" to add reasoning ability on a small/old model.
- A3: Commonsense reasoning is closest to my accessibility work - language-based
  judgments under general background knowledge, not arithmetic or symbols.
- A4: The authors state there is "no guarantee of correct reasoning paths" - a
  coherent chain can still be wrong. This applies to my Task 2 case: my CoT prompt
  produced the best structure, but a fluent chain about WCAG can still be wrong
  (GPT-4o did exactly that), so human verification stays mandatory.

Key terms: chain-of-thought prompting (adding worked reasoning steps to exemplars
so the model reasons before answering); zero-shot (asking directly, no examples,
no steps); few-shot (a few input-output examples to demonstrate the task);
reasoning chain (the intermediate steps from question to answer); emergent ability
(a capability absent in small models that appears past a scale threshold).

### Ji et al. (2023) - proposed answers

- A1: Hallucination is "nonsensical or unfaithful to the provided source content."
  Faithfulness is staying truthful to the source and is the antonym of
  hallucination; factuality is being based on actual fact. Per Maynez et al.,
  faithfulness is measured against the source, factuality against world knowledge;
  output can be faithful yet not factual, and vice versa.
- A2: Intrinsic contradicts the source; extrinsic cannot be verified from it.
  Intrinsic: an AI summary says a job needs five years when the description says
  three. Extrinsic: an advising note adds a credit requirement found nowhere in
  the catalog. Extrinsic is not always wrong but is treated with caution because
  it is unverifiable.
- A3: Hardest to fix by prompting is source-reference divergence baked into
  training data, plus training/inference causes - upstream of the prompt, so
  wording cannot undo them; verification and retrieval grounding matter more.
- A4: Extrinsic factual hallucination is my top risk. My outputs are open-ended
  guidance, so the danger is a confident, source-less claim that sounds correct
  but is in no source. My comparison caught one: GPT-4o mislabeled WCAG SC 3.3.7.

Key terms: hallucinations (fluent text unfaithful to or unverifiable against the
source); intrinsic (contradicts the source); extrinsic (cannot be confirmed or
denied from the source); faithfulness (truthful to the source; opposite of
hallucination); factually grounding (anchoring output in actual fact or a
verifiable source).

## Forum posts (canonical file: forum-responses-module-2.md)

### Thread #8 - your V1/V4 prompt pair

Target task: a supportive accessibility coaching response that rewrites an
inaccessible campus event announcement and teaches the content owner. Before (V1,
zero-shot): "Rewrite this event announcement to make it more accessible." After
(V4, chain-of-thought plus structure): a prompt that first makes the model analyze
audience, likely barriers, what AI can safely help with, and what needs human
review, then return a revised announcement, top improvements, a teaching note, a
human-review checklist, and one follow-up question.

What the change reveals: it was written for accessibility communication coaching.
The V1-to-V4 change shows the model did not need more capability so much as more
structure: a visible planning step and an explicit human-review checklist. V1 even
invented a fake date and address; V4 stopped fabricating and flagged what a human
must verify. The model needed me to separate "draft the language" from "verify the
facts," not to try harder.

### Thread #9 - greatest hallucination risk

In accessibility coaching and WCAG guidance, my highest risk in Ji's taxonomy is
extrinsic factual hallucination: a confident, source-less claim. In my comparison
GPT-4o mislabeled WCAG SC 3.3.7 as "Accessible Authentication" (3.3.7 is Redundant
Entry; Accessible Authentication is 3.3.8) and dropped Target Size - fluent and
wrong. My routine practice: treat every WCAG, ADA/Title II, or accommodation claim
as unverified until checked against the primary source, never the model's word.

### Thread #10 - tool comparison pattern

No single winner; it varied by task. Across the five-task protocol Claude and
GPT-4o tied on summarization, the email, and the argument, and separated only on
the precision tasks. On P1 both got the citation right, but Claude's APA was
complete and GPT-4o's was thin. On P3 Claude defaulted to population standard
deviation and flagged the sample-vs-population choice, while GPT-4o used sample SD
and shadowed the `statistics` module name. For open-ended writing either tool is
fine; for facts or code, verify regardless of tool.

### Thread #11 - chain-of-thought and scale

Yes. Wei et al. show CoT benefits are emergent, appearing only around 100B+
parameters; below that models give "fluent but illogical" chains. That matches my
runs - the CoT prompt produced the best structure only on a frontier model. So for
complex reasoning I stay on large, current models. The deeper lesson is the stated
limitation: "no guarantee of correct reasoning paths," so a coherent chain can
still be wrong. CoT buys transparency and structure, not correctness.

## Peer comments (two picks where you add real value)

Reply 1 - to MargieArnett (thread #8, a D2L announcement, your exact domain): I
read this as a time-sensitive student-communication task: a reassuring D2L
announcement that fixes a date error without making anyone anxious about credit.
Your V1 told the model what to say; your V3 told it who it is, who it is for, what
matters most, and how to sound. I ran your V1 in Claude: it produced a competent,
friendly announcement, matching your read, but with no heading structure, a bit
long, and a generic close. One accessibility add: make the subject a real heading,
keep link text descriptive, and front-load the single action ("post your
introduction as soon as possible to receive full credit") so screen-reader users
and skimmers get the key point first.

Reply 2 - to lcsheldon (thread #10, reproduced your code finding): I ran the same
P3 and got the same split. Claude defaulted to population standard deviation and
flagged the sample-vs-population choice; GPT-4o used sample SD and shadowed the
imported `statistics` module. Your framing nails why: the prompt is
underspecified, since it never says sample or population, so the right answer
depends on a judgment the prompt never made, and only one model surfaced that
ambiguity. The real risk is
not a wrong number; it is a model making an unstated decision for you and
presenting it as the answer.

## Confirm your committed artifacts

Already written and committed; only the judgment calls need your eyes:

- `two-tool-comparison.md` (accessibility set): Claude won every row; scores are a
  draft, WCAG row verified by hand. Confirm scores.
- `prompt-engineering-log.md`: ratings 3, 4, 4, 5 and a 150-word reflection.
  Confirm they match your real read.
- `hallucination-audit.md`: checklist plus the verified GPT-4o WCAG findings.
- `outputs/human-reviewed-output.md`: the finalized announcement rewrite.

## Part 3: What's left and your decisions

We now have everything needed to finish. Remaining build items, all unblocked:

- Task 1 official matrix, written from the real P1-P5 outputs.
- Task 3 audit, using the five texts and answer key above.
- Task 4 table, using your four chosen tools.
- The full filled activities template assembled as your Module 2 wiki page.

## Your questions, all in one list

1. Approve the Wei answers (especially A3, commonsense is closest to your work)?
2. Approve the Ji answers (especially A4, extrinsic factual is your top risk)?
3. Approve the four forum posts and the two peer comments as written?
4. Make the official P1-P5 the graded Task 1, with the accessibility comparison
   kept as a capstone supplement (recommended)?
5. Task 3: shall I pre-fill a verified audit draft for you to check, or leave the
   fact-checking entirely to you (the intended skill)?
6. Task 4: confirm four tools (suggested: Claude, Whisper, NotebookLM, and a
   vision tool), or pick your own.
7. Posting: paste the forum replies yourself, or authorize me to post via `gh`
   after your approval?

## Reference links

- Module 2 lesson page (official): <https://github.com/UA-AI2S/AI-Champions/wiki/Module-2:-Generative-AI>
- Activities template: <https://github.com/UA-AIFluency/CampusChampions/wiki/S2026:-Module-2-Activities-Template>
- Reading 1, Wei et al. 2022: <https://arxiv.org/abs/2201.11903>
- Reading 2, Ji et al. 2023: <https://dl.acm.org/doi/full/10.1145/3571730>
- Forum threads: #8 <https://github.com/UA-AI2S/AI-Champions/discussions/8>,
  #9 <https://github.com/UA-AI2S/AI-Champions/discussions/9>,
  #10 <https://github.com/UA-AI2S/AI-Champions/discussions/10>,
  #11 <https://github.com/UA-AI2S/AI-Champions/discussions/11>
