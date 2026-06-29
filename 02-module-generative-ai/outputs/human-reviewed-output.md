# Human-Reviewed Output

Based on outputs from Tool A and Tool B.

Reviewed by: Jeff Bishop
Date: 2026-06-29

Source: the strongest raw output was Tool A (Claude), Version 4 structured
planning, for the announcement-rewrite task. This file shows the reviewed,
finalized version and what a human had to add or confirm.

---

## What Changed from Raw Output

- Kept the labeled placeholders for date, time, full address, cost, sign-up URL,
  and contact email. The raw zero-shot output had invented these; they must come
  from the partner, not the model.
- Removed the model's claim that the venue is wheelchair accessible. Physical
  access is a fact to verify, not to assume.
- Kept the accommodations line but set a concrete request deadline as a
  placeholder for the owner to fill.
- Kept the human-review checklist verbatim because it correctly names what a
  person must confirm before sending.

## Final Reviewed Content

**Subject: Spring Fling — [Date], [Time] at [Venue Name]**

Hi everyone,

You're invited to our Spring Fling! Here are the details:

- **What:** Spring Fling — food, music, and prizes
- **When:** [Day, Month Date] from [start time] to [end time]
- **Where:** [Venue name and full street address]
- **Cost:** [Free / $amount]

**[Sign up for the Spring Fling]([add registration URL])**

The full flyer is attached as a PDF, and all the key details are listed above in
the email so you do not need to open it.

**Questions or access needs?** Email us at [contact email]. If you need an
accommodation (dietary, mobility, interpreting, and so on), let us know by
[request deadline] and we will do our best to help.

We hope to see you there.

[Sender name / team]

## Human Review Notes

- Accuracy checked: All concrete facts (date, time, address, URL, cost) left as
  placeholders. No fabricated details remain in the final version.
- Accessibility claims verified: Removed the unverified "wheelchair accessible"
  claim; the PDF flyer must still be confirmed as tagged with readable contrast,
  or the email body treated as the source of truth.
- Tone reviewed: Supportive, plain language, non-shaming. Excess punctuation and
  texting shorthand removed.
- Privacy checked: Sample announcement is fictional; no real personal data.
- Policy alignment confirmed: Matches SAFETY.md (public/fictional input,
  human review before use, no final accessibility decision delegated to AI).
- Still requires the partner: real event facts, venue accessibility confirmation,
  who handles accommodation requests, and final send authorization.
