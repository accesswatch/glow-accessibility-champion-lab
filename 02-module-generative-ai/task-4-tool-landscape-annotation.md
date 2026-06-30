# Task 4: AI Tool Landscape Annotation

Four tools selected for my accessibility-champion role, with at least one non-text
modality (audio and image/multimodal are both covered). Access status is marked as
one of: personally accessed, institutionally licensed, or awaiting approval.
Institutional concerns name a specific mechanism, not a general worry.

| Tool | Modality | Access status | Best use case for my role | Key institutional concern |
| :-- | :-- | :-- | :-- | :-- |
| Claude (Opus 4.8) | Text | Personally accessed (Pro/API); UA institutional tier unconfirmed | Coaching and drafting: WCAG explanations, announcement rewrites, and human-review checklists for campus partners | Whether partner or student text pasted into the consumer tier is retained or used to improve models; the API/zero-retention terms differ from the consumer app, so the tier I use changes the answer |
| Whisper | Audio | Personally accessed (open source, run locally) | Generating transcripts and first-draft captions for recorded campus media and meetings | If run locally, data exposure is low; the concern is a hosted Whisper API instead, where identifiable participant voice audio would leave the machine and sit on a third-party server |
| NotebookLM | Text | Personally accessed (free); UA Google Workspace tier unconfirmed | Summarizing accessibility policy and WCAG source documents I upload, grounded in those sources to reduce invented claims | Whether documents I upload (policy drafts, partner materials, student work) are retained or used for product improvement on the consumer tier versus a managed Workspace tier |
| GPT-4o | Multimodal (image/vision) | Awaiting approval for institutional use; personally accessed for testing | Drafting alt text and image descriptions from screenshots and figures, and quick multimodal triage | Images may contain student PII or sensitive content; sending them to the OpenAI API means image inputs leave the institution, so retention and training settings (API default vs consumer ChatGPT) must be confirmed before real use |

## Why these four

- Modality spread: text (Claude, NotebookLM), audio (Whisper), and image/vision
  (GPT-4o). That matches the real accessibility workload, which is not text-only -
  captions and alt text are core deliverables.
- Risk spread: Whisper run locally is the low-exposure option; GPT-4o is the
  highest-capability and highest-exposure option; Claude and NotebookLM sit in
  between and depend on which tier is used.

## How I would actually use them together

- NotebookLM to summarize and stay grounded in the primary standards and policy
  documents (lowest hallucination risk because it only uses what I upload).
- Claude to turn that grounding into partner-facing coaching, rewrites, and
  human-review checklists.
- Whisper, run locally, for transcripts and caption drafts so participant audio
  never leaves the machine.
- GPT-4o for image-to-alt-text drafting, with the output always treated as a
  draft a human verifies against the image's actual purpose in context.

## Access and verification note

The two "unconfirmed" and one "awaiting approval" entries are deliberate: before
any of these touch real partner or student data, I verify the current University
of Arizona approved-tool list and the data-handling tier, and I do not assume the
consumer tier of a tool carries the same retention terms as an institutional or
API tier. No image or audio containing identifiable people goes to a hosted API
that has not been cleared for that data.
