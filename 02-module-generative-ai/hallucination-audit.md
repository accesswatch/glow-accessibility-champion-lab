# Accessibility Hallucination Checklist

| Claim type | Risk | Verification source |
|---|---|---|
| WCAG requirement | Model may invent or misstate criterion. | W3C/WAI official WCAG documentation |
| Legal obligation | Model may overstate or oversimplify law. | UA counsel, DOJ, official policy |
| Accommodation guidance | Model may generalize beyond context. | DRC policy and human expert review |
| Assistive technology behavior | Model may be outdated. | Current testing with JAWS, NVDA, VoiceOver, Narrator, TalkBack, or other relevant tools |
| PDF remediation claim | Model may claim automated fixes are sufficient. | Human inspection and accessibility testing |
| Alt text judgment | Model may describe image content but not purpose. | Human content owner and surrounding context |

## Severity Scale

| Severity | Meaning | Example |
|---|---|---|
| Low | Minor wording issue; unlikely to mislead. | Slightly awkward description of headings. |
| Medium | Could mislead routine practice. | Suggesting all images need detailed alt text. |
| High | Could influence legal, policy, accommodation, or conformance decisions. | Claiming a PDF is compliant without inspection. |

## Findings From This Module's Runs

The WCAG explanation prompt produced a real, verifiable hallucination in the
GPT-4o output (`outputs/tool-b-output.md`). Each claim below was checked against
the published WCAG 2.2 Recommendation.

| Claim made | Reality | Severity |
|---|---|---|
| "2.2.2 Pause, Stop, Hide (Enhanced)" is new in 2.2 | 2.2.2 dates to WCAG 2.0/2.1; it is not new in 2.2. | Medium |
| "2.4.11 Focus Appearance (Minimum)" | 2.4.11 is Focus Not Obscured (Minimum). Focus Appearance is 2.4.13 (AAA). | Medium |
| "3.3.7 Accessible Authentication" | 3.3.7 is Redundant Entry. Accessible Authentication (Minimum) is 3.3.8. | High |
| Target Size omitted | 2.5.8 Target Size (Minimum) is a new AA criterion in 2.2 and was missing. | Medium |

By contrast, the Claude output (`outputs/tool-a-output.md`) listed the correct
six new AA-relevant criteria and correctly noted that 4.1.1 Parsing was removed.

The 3.3.7 mislabel is rated High because a content owner could act on the wrong
criterion number and believe they have addressed an authentication requirement
they have not. This is the core lesson of the module: fluent, confident output
is not the same as correct output, and standards claims must be verified against
the primary source before they are repeated to a campus partner.

## Verification Action Taken

WCAG criterion numbers and names were confirmed against the W3C WCAG 2.2
Recommendation. No model's standards claims were accepted on the model's word.
