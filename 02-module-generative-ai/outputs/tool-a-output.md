# Tool A Output

Tool used: claude-opus-4-8

Date: 2026-06-29

Note: Raw, unedited model output. Captured via API. Sample announcement is fictional.

---

## WCAG explanation

Prompt:

```text
Explain the difference between WCAG 2.1 AA and WCAG 2.2 AA for a busy campus content owner. Include what they should do differently this week.
```

Output:

# WCAG 2.1 AA vs 2.2 AA: What Changed

**The short version:** WCAG 2.2 keeps everything from 2.1 and adds 6 new AA-level success criteria. Nothing was removed (except one criterion, 4.1.1 Parsing, which is now obsolete). If you already meet 2.1 AA, you're most of the way there.

## The New AA Criteria in 2.2 (that affect content owners most)

| Criterion | What it means in plain terms |
|-----------|------------------------------|
| **2.4.11 Focus Not Obscured** | When someone tabs through your page, the highlighted item can't be hidden behind sticky headers, cookie banners, or chat widgets. |
| **2.5.7 Dragging Movements** | Anything that requires dragging (sliders, drag-to-reorder) needs a simple click/tap alternative. |
| **2.5.8 Target Size (Minimum)** | Clickable things (buttons, links) should be at least 24x24 pixels, or have enough spacing around them. |
| **3.2.6 Consistent Help** | If you offer help (contact info, chat, FAQ link), put it in the same place across pages. |
| **3.3.7 Redundant Entry** | Don't make people re-type info they already entered in the same process (e.g., re-entering an address). |
| **3.3.8 Accessible Authentication** | Don't force people to solve puzzles, memorize, or transcribe to log in. Allow password managers/copy-paste. |

> Most of these are **developer/platform issues**, but a few are squarely on content owners.

## What You Should Actually Do This Week

As a **content owner** (not a developer), focus on the things you control:

1. **Check your help links.** Make sure "Contact," "Help," or chat links appear consistently—same spot, same wording—across your pages. *(3.2.6)*

2. **Stop forcing re-entry in your forms.** Review any multi-step forms you own. If you ask for the same info twice, fix it or pre-fill it. *(3.3.7)*

3. **Audit tiny buttons and cramped links.** Look for closely packed links, small icons, or "click here" targets that are hard to tap on a phone. Add spacing or flag for your web team. *(2.5.8)*

4. **Test tabbing on a key page.** Press Tab repeatedly on your most important page. Does the highlight ever disappear behind a banner or sticky menu? Note it and report it. *(2.4.11)*

5. **Flag anything to your dev/IT team** that isn't yours to fix (dragging interactions, login puzzles)—you don't have to solve these, just escalate them.

## What You Can Safely Ignore (for now)

- The deep technical/platform criteria (auth, dragging logic) belong to your developers or vendor.
- You don't need to redo your existing accessible content—2.1 work still counts.

---

**Bottom line:** WCAG 2.2 AA = WCAG 2.1 AA + 6 mostly-usability additions. This week, do a 30-minute pass on **consistent help links, form re-entry, small tap targets, and the Tab test.** Escalate the rest.

Want a one-page checklist version you can hand to your team?

## Announcement rewrite

Prompt:

```text
Rewrite this announcement to improve accessibility, clarity, meaningful link text, plain language, and access information:

Subject: Don't Miss Our Spring Fling!!!

Hey everyone!! Click here to sign up for the BEST event of the year. The Spring
Fling is happening soon at the usual spot. There will be food, music, and prizes!!!
Email us if u have questions. All the details are in the attached flyer (PDF).
Don't forget!!!
```

Output:

# Spring Fling: You're Invited

Join us for the Spring Fling, our annual celebration with food, music, and prizes.

## Event Details

- **Date:** [Add date]
- **Time:** [Add start and end time]
- **Location:** [Add full venue name and street address]
- **Cost:** [Add cost, or note if free]

## What to Expect

- A meal and refreshments
- Live music
- Prize drawings

## How to Sign Up

[Register for the Spring Fling using our online form](#) by [add deadline].

## Accessibility

The venue is wheelchair accessible. If you need accommodations such as [interpreting services, dietary options, or assistance], please contact us by [add date] so we can support your attendance.

## Questions?

Email us at [add email address] and we'll be glad to help.

We hope to see you there!

---

**Notes on the changes I made:**

- **Clear subject line** that states what the message is about.
- **Replaced "Click here"** with descriptive link text that explains where the link goes.
- **Added an event details section** so key information (date, time, location, cost) is easy to find rather than buried in vague phrases like "soon" and "the usual spot."
- **Moved details out of the PDF only.** Attachments aren't always accessible to screen readers, so the core information now lives in the message itself. (Keep the flyer as an optional extra if you like.)
- **Added an accessibility section** so attendees know how to request accommodations.
- **Plain language and reduced punctuation.** Removed excessive exclamation marks and "u" for clarity and professionalism.
- **Used headings** to structure the content for easier scanning and screen reader navigation.

Just fill in the bracketed placeholders before sending.

## PDF coaching response

Prompt:

```text
A faculty member says, "Can you just make this PDF accessible by tomorrow?" Draft a supportive coaching response that helps now and teaches for next time.
```

Output:

# Draft Coaching Response

Here's a response you could send or adapt:

---

**Hi [Name],**

Happy to help with this. Let me give you a realistic picture and a path forward.

**For tomorrow:**

Send me the PDF and let me know:

- Is this a document you created (Word, PowerPoint, InDesign), or a scan/PDF only?
- Who's the audience, and what's the deadline tied to? (A student accommodation has different urgency than a general posting.)

If you have the *source file*, I can often turn things around quickly because we fix accessibility at the source and re-export. If it's a scanned PDF with no source, it takes longer—scans need text recognition (OCR), reading-order checks, and tagging by hand. I'll tell you honestly which situation we're in and what's achievable by tomorrow versus shortly after.

**For next time (this is the part that saves you stress):**

PDF accessibility is mostly *built upstream*, not bolted on at the end. A few habits in your original document do 80% of the work:

- **Use real headings** (the Styles menu in Word), not just big bold text
- **Add alt text to images** (right-click → View Alt Text)
- **Write descriptive link text** ("Spring syllabus" instead of "click here")
- **Use the built-in accessibility checker** before exporting (Review → Check Accessibility)
- **Keep the source file**—it's much easier to fix a Word doc than a finished PDF

If you'd like, I can do a 20-minute screen-share to walk through these on a document you actually use. Once it's part of your normal workflow, "make it accessible" stops being a fire drill.

Send the file over and we'll get tomorrow sorted.

Best,
[Your name]

---

## Why this response works

- **Says yes and helps immediately** — protects the relationship and the deadline
- **Asks the diagnostic question** (source file vs. scan) that determines what's actually possible
- **Sets honest expectations** without lecturing or saying "no"
- **Teaches the upstream fix** so the request gets easier over time
- **Offers a low-cost next step** (20 minutes) to build their independence

Want me to tailor this for a specific scenario—like a student accommodation deadline, a scanned-only PDF, or a faculty member who's resistant to changing their workflow?

## Alt text purpose

Prompt:

```text
Explain why AI can help draft alt text options but cannot decide image purpose without human context.
```

Output:

# Why AI Drafts Alt Text But Can't Decide Image Purpose

## What AI Can Do

AI is genuinely good at describing what's *visually present* in an image:

- "A woman in a blue jacket standing in front of a brick building"
- "A bar chart showing three columns of increasing height"
- "A red circular icon with a white checkmark"

It can generate several phrasings of these descriptions quickly, giving you options to refine.

## What AI Cannot Determine

The core problem: **the same image can mean completely different things depending on why it's there.** AI sees pixels; it doesn't know your intent.

Consider one photo of a man shaking hands with a doctor:

| Context | Appropriate Alt Text |
|---------|---------------------|
| Article about patient care | "Doctor greeting a patient with a handshake" |
| Page about a *specific named doctor* | "Dr. Sarah Chen meeting a new patient" |
| Decorative banner image | `alt=""` (empty—skip it) |
| Link to a booking page | "Schedule an appointment" (the *function*, not the picture) |

The pixels never changed. The correct alt text changed entirely.

## Why Context Lives Outside the Image

Alt text answers **"what does a screen reader user need here to keep up with everyone else?"** That depends on:

1. **Surrounding content** — Is the image already explained in nearby text? Then describing it again is redundant noise.
2. **Function** — If the image is a button or link, alt text should describe the *action*, not the appearance.
3. **Purpose** — Is it informative, decorative, or functional? Decorative images should be hidden entirely, which means the *best* alt text is sometimes *none*.
4. **What matters to your audience** — Which details are relevant? AI can't know that the *brand* of the shoe matters in a sales page but not in a fitness article.

## The Key Distinction

> AI can answer **"What is in this image?"**
> Only a human can answer **"Why is this image here, and what should this reader take from it?"**

## Practical Takeaway

Use AI as a **first-draft assistant**: let it propose descriptions, then you edit for relevance, decide whether to keep it at all, and align it with the image's actual job on the page. The human supplies the purpose; the AI supplies the raw material.

## Human-review checklist

Prompt:

```text
Create a human-review checklist for AI-assisted accessibility guidance.
```

Output:

# Human-Review Checklist for AI-Assisted Accessibility Guidance

Use this checklist when reviewing accessibility recommendations generated or assisted by AI tools before they're implemented or published.

## 1. Accuracy & Standards Alignment

- [ ] Recommendations cite the correct **WCAG version and level** (e.g., 2.2 AA)
- [ ] Success criteria are accurately referenced (correct number and intent)
- [ ] Guidance reflects **current** standards (not deprecated WCAG 1.0/2.0 advice)
- [ ] No fabricated criteria, ARIA roles, or APIs ("hallucinations")
- [ ] Legal/regulatory claims (ADA, Section 508, EN 301 549) are verified, not assumed

## 2. Technical Correctness

- [ ] Code snippets are valid and tested, not just plausible-looking
- [ ] ARIA usage follows the **"first rule of ARIA"** (use native HTML first)
- [ ] No conflicting or redundant ARIA attributes recommended
- [ ] Semantic HTML is prioritized over div/span workarounds
- [ ] Suggestions work across major browsers and assistive technologies

## 3. Real Assistive Technology Validation

- [ ] Guidance verified against actual screen readers (NVDA, JAWS, VoiceOver)
- [ ] Keyboard-only operation confirmed, not assumed
- [ ] Recommendations account for mobile/touch AT (TalkBack, VoiceOver iOS)
- [ ] AI claims about AT behavior are tested, not taken at face value

## 4. Context & Appropriateness

- [ ] Advice fits the **actual use case** (not generic boilerplate)
- [ ] Recommendations consider the specific user population affected
- [ ] Trade-offs and limitations are acknowledged
- [ ] No one-size-fits-all fixes applied to nuanced situations

## 5. Inclusivity Beyond Compliance

- [ ] Addresses cognitive, low-vision, motor, and neurodivergent needs—not just blindness
- [ ] Considers **lived experience**, not only technical conformance
- [ ] Plain-language and readability factors included where relevant
- [ ] Avoids "checkbox compliance" that passes audits but fails users

## 6. Bias & Representation

- [ ] Language is respectful and uses current disability terminology
- [ ] No assumptions that frame disability as deficit
- [ ] Guidance doesn't exclude users with intersecting needs
- [ ] Examples and personas reflect diverse abilities

## 7. Completeness

- [ ] Critical accessibility considerations aren't omitted
- [ ] Edge cases (dynamic content, error states, timeouts) are addressed
- [ ] Testing/verification steps are included, not just the fix
- [ ] Maintenance implications noted (will this break later?)

## 8. Human Accountability

- [ ] A **qualified accessibility specialist** has reviewed the output
- [ ] Final decisions are made by a human, not the AI
- [ ] Source of guidance is documented for traceability
- [ ] **People with disabilities** are involved in validation where possible

## 9. Risk & Escalation

- [ ] High-stakes guidance (legal, medical, financial flows) gets extra scrutiny
- [ ] Uncertainty or low-confidence AI output is flagged
- [ ] Disagreements between AI and human reviewers are documented and resolved
- [ ] Clear path to escalate to senior expert when needed

## 10. Documentation

- [ ] AI's role in producing the guidance is disclosed
- [ ] Reviewer name, date, and decision recorded
- [ ] Rejected AI suggestions and rationale logged
- [ ] Checklist completion archived for audit purposes

---

**Reviewer:** _____________  **Date:** _________  
**Outcome:** ☐ Approved ☐ Approved with edits ☐ Rejected ☐ Needs expert escalation

*Tip: Treat AI output as a first draft from a knowledgeable but unverified assistant—useful for speed, never a substitute for expert judgment and real-world testing.*

Would you like a version tailored to a specific context (e.g., design teams, developers, content authors, or procurement)?
