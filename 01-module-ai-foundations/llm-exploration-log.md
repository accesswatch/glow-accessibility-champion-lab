# Module 1 LLM Exploration Log

Tool used for all five prompts: **Claude (Sonnet 4.6)**  
Prompts source: `02-module-generative-ai/prompts/`  
Full outputs: see the section below the table.

| Prompt # | Tool used | Output summary (under 40 words) | Accuracy 1-5 | Usefulness 1-5 | Key observation | Accessibility implication |
|---|---|---|---:|---:|---|---|
| 1 | Claude Sonnet 4.6 | Listed 5 new WCAG 2.2 AA criteria relevant to campus content owners, noted Parsing criterion removed, gave three specific this-week actions. Well-scoped and practical. Compliance note on DOJ Title II rule is correct but should be verified. | 4 | 5 | Output was practical and appropriately scoped. Did not overwhelm with all 9 new criteria — prioritized by relevance to content owners. | Current facts require verification. |
| 2 | Claude Sonnet 4.6 | Rewrote vague announcement with specific date, descriptive link text, heading structure, and explicit accommodation contact. Added teaching note and 5-item human-review checklist. Prompt had a placeholder; used workshop sample. | 4 | 4 | Output could not substitute for missing content — the [paste sample announcement] placeholder required a real announcement. Used the workshop planning doc sample. Placeholder prompts limit output quality. | Summarization can help, but must preserve meaning. |
| 3 | Claude Sonnet 4.6 | Coaching response acknowledged urgency, explained why overnight remediation is often unrealistic, offered triage logic for accommodation vs. general content, and taught the "author accessibly first" principle. Tone was supportive. | 5 | 5 | The accommodation-vs-general triage distinction was produced without prompting for it. That is a clinically useful distinction that a zero-shot prompt does not reliably generate. | Reasoning must be checked. |
| 4 | Claude Sonnet 4.6 | Explained AI can describe visual content but cannot determine purpose, relevance, or equivalent information without context. Gave the practical rule: AI drafts candidates, human decides whether alt text serves the same purpose. | 5 | 5 | This distinction (describing content vs. deciding purpose) is subtle and easy for non-specialists to miss. Output articulated it clearly without being asked to. High confidence in accuracy here — this is well-established practice. | Plain-language explanation is a strength. |
| 5 | Claude Sonnet 4.6 | Generated 14-item checklist in four sections: before use, accuracy, bias and fairness, before sharing. Flagged legal claims, AT behavior, compliance assertions, and disability language as key review categories. | 4 | 4 | Well-organized and reusable. Assumes some accessibility knowledge in the reviewer. Would need a simpler version for non-specialist partners. The checklist is a starting point, not a complete framework. | Recent developments can trigger hallucination. |

---

## Full Outputs

### Prompt 1 — WCAG 2.1 AA vs. WCAG 2.2 AA

**Prompt:** Explain the difference between WCAG 2.1 AA and WCAG 2.2 AA for a busy campus
content owner. Include what they should do differently this week.

**Output:**

WCAG 2.2 AA adds 9 success criteria to WCAG 2.1 AA and removes one (4.1.1
Parsing, now obsolete). The additions most relevant to campus content owners:

- **2.5.8 Target Size (Minimum)** — interactive targets need a 24x24 CSS
  pixel minimum. Small buttons fail.
- **2.4.11 Focus Not Obscured (Minimum)** — a focused element must not be
  completely hidden by a sticky header or cookie banner.
- **3.2.6 Consistent Help** — if a contact or help link appears on multiple
  pages, it must be in the same location on each.
- **3.3.8 Accessible Authentication** — CAPTCHAs requiring a cognitive test
  must have an alternative.
- **2.5.3 Label in Name** — the visible label on a button must match what a
  screen reader announces.

This week: pick one high-traffic form. Check that every button's visible
label matches its accessible name. Check that tabbing to a focused element
does not get covered by a sticky header. Flag any CAPTCHA for IT review. You
do not need to audit everything at once.

Note: the DOJ's updated Title II rule (effective April 2026 for larger
entities) requires WCAG 2.2 AA. If you have been working toward WCAG 2.1 AA,
the gap is small and targeted.

**Human-review note:** Verify the specific criteria numbers and the Title II
compliance deadline against official sources before sharing with a partner.

---

### Prompt 2 — Announcement Rewrite

**Prompt:** Rewrite this announcement to improve accessibility, clarity, meaningful link
text, plain language, and access information: [paste sample announcement].

**Note:** The prompt contained a placeholder. The sample announcement from the
AHG workshop planning document was used: "Join us for our exciting event next
Friday. Click here to register. If you need anything, contact our office. We
will talk about new services, updates, and important things everyone needs to
know. More information will be sent later."

**Output:**

---

**[Event Name] — [Day, Date, Time] | [Location or Platform]**

Join us for [specific topic or title], an information session for [audience].

**What we will cover:**

- [Topic 1]
- [Topic 2]
- [Topic 3]

**Register:** [Register for the [Month Date] session](link) by [date].

**Accessibility:** This event is held in [accessible venue/platform]. To
request an accommodation, contact [name] at [email] by [date].

**Questions:** Contact [name] at [email or phone].

---

**Top accessibility improvements:**

1. Replaced "next Friday" with a specific date.
2. Replaced "click here" with descriptive link text.
3. Added explicit heading structure.
4. Added accommodation contact with deadline and method.
5. Removed vague filler; made topic specific.
6. Removed "more information will be sent later" (adds nothing; if true, say when).

**Teaching note:** Two patterns cause most event announcement failures — vague
link text and missing accommodation information. Check those two things before
every send.

**Human-review checklist:**

- [ ] Is the date specific?
- [ ] Does every link describe where it goes?
- [ ] Is the accommodation contact, method, and deadline clear?
- [ ] Is the location or platform named?
- [ ] Is the topic specific enough that a reader knows whether to attend?

---

### Prompt 3 — PDF Coaching Response

**Prompt:** A faculty member says, "Can you just make this PDF accessible by tomorrow?"
Draft a supportive coaching response that helps now and teaches for next time.

**Output:**

Thank you for sending this over. I can hear the time pressure, and I want to
help you move forward and set you up better for next time.

Here is the honest picture: making a PDF fully accessible depends on how it
was created, whether the source file is available, how many pages it has, and
what types of content are inside (text, tables, scanned images, form fields).
"Accessible by tomorrow" is often not achievable for a complex document — and
a PDF that looks fixed but was not properly verified can still fail for screen
reader users.

**Right now:** Send me the PDF and tell me its most critical use. Is this for
a student who has already requested an accommodation, or is it general course
content? If it is an active accommodation situation, we treat it as urgent and
I will triage with you today. If it is general content, I can tell you what
the most significant barriers are and give you a realistic timeline.

**For next time:** The easiest fix is upstream. Authoring an accessible Word
or PowerPoint file before converting to PDF takes about ten extra minutes and
avoids this situation entirely. I can show you a short checklist that makes a
real difference on your next document.

Want to send me the file now, or would a quick call to triage be easier?

**Human-review note:** The accommodation-vs-general content triage logic is
sound but should reflect your actual institutional process (DRC workflow,
escalation path, timeline expectations).

---

### Prompt 4 — Why AI Cannot Decide Image Purpose

**Prompt:** Explain why AI can help draft alt text options but cannot decide image purpose
without human context.

**Output:**

AI can analyze visual content — shapes, text, objects, spatial layout — and
generate a description of what is present. That is a genuine capability. What
AI cannot do is determine what an image means in context, because meaning
depends on factors that exist outside the image itself.

**What AI can help with:**

- Generating multiple candidate alt text options based on visual content.
- Flagging that text is present in an image (which always needs an alternative).
- Suggesting whether an image appears decorative or informative based on
  visual cues alone.

**What AI cannot determine:**

- **Purpose.** Is this decorative or informative? A photo of a student could
  be decorative in one article and the subject of the article in another.
  Only the author knows.
- **Relevant information.** What must the alt text convey so a non-sighted
  user receives equivalent information? That is an editorial judgment about
  intent.
- **Context-specific meaning.** The same chart needs different alt text in a
  marketing email and a research paper, because the audience and what they are
  expected to take away differ.

**Practical rule:** Use AI to draft candidate descriptions. Then ask: does
this alt text serve the same purpose for a blind user as the image does for a
sighted user? Only a human who understands the content's purpose can answer
that reliably.

---

### Prompt 5 — Human-Review Checklist

**Prompt:** Create a human-review checklist for AI-assisted accessibility guidance.

**Output:**

## Human Review Checklist for AI-Assisted Accessibility Guidance

**Before using the output:**

- [ ] Does the output cite a specific WCAG criterion? Verify against official
      W3C documentation.
- [ ] Does it make a legal or compliance claim ("required by law," "meets
      Section 508")? Flag for expert review — AI oversimplifies legal
      obligations.
- [ ] Does it make an accommodation-related recommendation? Accommodation
      decisions require DRC or HR involvement.
- [ ] Does it describe assistive technology behavior? Verify by testing — AT
      behavior changes with versions and browser combinations.
- [ ] Does it claim a file, page, or process is "accessible" or "compliant"?
      No AI output can make that determination. Remove or qualify the claim.

**Accuracy checks:**

- [ ] Can you verify the key factual claim from an authoritative source (W3C,
      Section 508, institutional policy)?
- [ ] Does the output contradict established practice or direct testing
      results?
- [ ] Are specific numbers, dates, or version references present? Verify each.

**Bias and fairness checks:**

- [ ] Does the output use consistent, appropriate language around disability?
- [ ] Does it generalize about disability in a way that flattens the real
      diversity of user needs?
- [ ] Does it assume one assistive technology is the only one in use?

**Before sharing:**

- [ ] Remove language implying the AI made an authoritative judgment.
- [ ] Add a note that the guidance reflects your professional review, not the
      tool's authority.
- [ ] Apply your judgment to every claim before it reaches a student, faculty
      member, or partner.
