# Task 3: Hallucination Detection Audit (Texts A-E)

Taxonomy: Ji et al. (2023), applied as intrinsic vs extrinsic with sub-types
factual, temporal, and relational/causal. Here the texts are standalone, so
"intrinsic" means a claim that contradicts well-established fact, and "extrinsic"
means a fabricated or unverifiable addition (an invented statistic or source).

Severity: Low = minor imprecision; Medium = could mislead routine understanding
or decisions; High = a central, consequential error that would seriously mislead.

Verification used reputable primary or authoritative secondary sources, named per
claim. This is a pre-filled draft for you to check against; where the mapping to
the scrambled answer key is debatable, I flag it.

## Text A - The History of the Olympic Games

| Claim | Accurate? | Verification source | Type | Severity |
| :-- | :-- | :-- | :-- | :-- |
| Modern Games revived in 1900 in Paris | N | IOC / Olympics.com: first modern Games were 1896 in Athens | Temporal (year) + factual (place) | Medium |
| Revived largely through Pierre de Coubertin, who saw sport promoting peace | Y | IOC history | - | - |
| First Games had ~14 nations and ~250 athletes | Y (for 1896) | 1896 Athens: ~14 nations, ~241 athletes | - | Low (the ~250 figure is attached to the wrong year/city) |
| Events included athletics, cycling, swimming | Y | 1896 program | - | - |
| Women not permitted until 1920 Antwerp | N | Women first competed at 1900 Paris | Factual/temporal | Medium |
| Motto "Citius, Altius, Fortius" adopted at the inaugural Games | N | Adopted by the IOC and first used officially at the 1924 Paris Games | Temporal | Medium |

Note: Text A's signature failure is getting the founding event wrong (1896
Athens, not 1900 Paris) and then mis-dating women's participation and the motto.
It reads fluently and the surrounding details (Coubertin, the athlete count, the
events) are correct, which is what makes the wrong year and place easy to miss.

Answer-key match: "Factual (Low-Medium): a factual hallucination (medium) and a
temporal hallucination (medium)." Place error = factual (medium); year error =
temporal (medium).

## Text B - The Human Body and Sleep

| Claim | Accurate? | Verification source | Type | Severity |
| :-- | :-- | :-- | :-- | :-- |
| Adults need 7-9 hours for optimal cognition | Y | CDC / NIH / Sleep Foundation | - | - |
| During REM the body repairs muscle and releases growth hormone, making REM the most physically restorative stage | N | Growth-hormone release and tissue repair occur in deep slow-wave (NREM) sleep, not REM (NIH / Sleep Foundation) | Relational/causal (function attributed to wrong stage) | Medium |
| Chronic sleep under 6 hours linked to cardiovascular disease, obesity, impaired immunity | Y | CDC / NIH | - | - |
| Average adult takes ~7 minutes to fall asleep | Uncertain | Typical healthy sleep latency is ~10-20 minutes; under ~5-8 minutes can indicate deprivation | Extrinsic/statistical | Low |

Note: The error is plausible because REM is genuinely important - it is just the
wrong stage for physical restoration. A reader who half-remembers "REM is
important sleep" would not catch the swap.

Answer-key match: "Relational/Causal (Medium): a relational/causal hallucination
(medium) and an extrinsic hallucination (low)." REM attribution = relational
(medium); the 7-minute figure = extrinsic (low).

## Text C - The Amazon Rainforest

| Claim | Accurate? | Verification source | Type | Severity |
| :-- | :-- | :-- | :-- | :-- |
| ~5.5 million sq km across nine countries; largest tropical rainforest | Y | WWF / standard references | - | - |
| Over 400 billion individual trees, more than 16,000 species | Roughly (overstated) | Widely cited estimate is ~390 billion trees, ~16,000 species (Ter Steege et al., 2013) | Extrinsic/statistical (overstatement) | Low |
| A 2019 WWF report found 30% deforested since monitoring began in 1970 | N | Cumulative Amazon deforestation is ~17-20%; no such "30% since 1970" WWF figure exists. Fabricated statistic and source | Extrinsic/statistical (invented stat + source) | High |
| Amazon River discharges ~20% of all freshwater into the oceans | Y | Standard hydrology references | - | - |

Note: The dangerous claim is the fabricated "2019 WWF report ... 30% ... since
1970." It pairs a specific organization, year, and number, which is exactly the
shape of a citation people trust without checking. The real figure is materially
lower.

Answer-key match: "Extrinsic/Statistical (High): an extrinsic hallucination
(high) and an extrinsic hallucination (low)." The 30%/2019-WWF claim = extrinsic
(high); the "over 400 billion trees" overstatement = extrinsic (low).

## Text D - Marie Curie

| Claim | Accurate? | Verification source | Type | Severity |
| :-- | :-- | :-- | :-- | :-- |
| Polish-born physicist and chemist who coined "radioactivity" | Y | Nobelprize.org / Britannica | - | - |
| First woman to win a Nobel Prize | Y | Nobelprize.org (1903) | - | - |
| 1903 prize was in Chemistry, for discovery of polonium and radium | N | The 1903 prize was in Physics (shared with Pierre Curie and Henri Becquerel) for radiation research | Intrinsic (contradicts established fact) | High |
| First person to win Nobels in two different sciences | Y | Nobelprize.org | - | - |
| Second prize was in Physics in 1911 | N | The 1911 prize was in Chemistry (for polonium and radium) | Intrinsic | High |
| First woman appointed professor at the University of Warsaw, where she taught most of her career | N | She was the first woman professor at the University of Paris (Sorbonne) and worked in Paris | Relational (wrong institutional association) | Medium |

Note: The two prizes are swapped (1903 Physics and 1911 Chemistry, not the
reverse), and the professorship is moved from Paris to Warsaw. The passage is
confidently specific and gets the famous headline facts right (first woman
laureate, two sciences), which camouflages the swapped specifics.

Answer-key match: "Intrinsic (High): an intrinsic hallucination (high) and a
relational hallucination (medium)." The prize swap = intrinsic (high); the Warsaw
professorship = relational (medium).

## Text E - The Internet and the World Wide Web

| Claim | Accurate? | Verification source | Type | Severity |
| :-- | :-- | :-- | :-- | :-- |
| The Internet and the Web are the same technology | N | They are distinct: the Internet is the network (from ARPANET, 1969; TCP/IP, 1983); the Web is an application built on it (Internet Society; CERN) | Factual | Medium |
| Developed together in the late 1980s by Tim Berners-Lee at CERN | Partly | Berners-Lee invented the Web at CERN (1989-1991); the Internet predates this by ~20 years and was not his work | Factual (+ temporal for the Internet) | Medium |
| Berners-Lee designed it to survive a nuclear attack via multiple pathways, so the web has no central server | N | The nuclear-survivability rationale is a myth tied to ARPANET/Paul Baran, not the Web; misstates motivation and architecture | Relational/causal | Medium |
| By 1995, ~50 million people worldwide used the web | Uncertain (overstated) | 1995 estimates of internet users are commonly ~16-45 million; web users fewer | Extrinsic/statistical | Low |

Note: Text E is the messiest. Its core failures are two factual conflations -
treating the Internet and Web as one thing, and crediting their joint invention
to Berners-Lee in the late 1980s - plus a well-known origin myth (nuclear
survivability) that actually belongs to ARPANET.

Answer-key match (with a caveat): best fit is "Temporal + Factual (Medium): a
factual hallucination (medium) and a factual hallucination (medium)," taking the
two factual conflations as the pair. Caveat: the nuclear-attack sentence is a
genuine relational/causal hallucination, so if you would rather classify E by
that sentence it overlaps the relational/causal row; I assigned the
relational/causal row to Text B because B fits the "relational + extrinsic-low"
shape cleanly and E's highest-severity errors are factual.

## Calibration summary (text to answer-key row)

| Text | Answer-key row | Primary hallucinations |
| :-- | :-- | :-- |
| A | Factual (factual medium + temporal medium) | 1896 Athens shown as 1900 Paris |
| B | Relational/Causal (relational medium + extrinsic low) | Restoration attributed to REM |
| C | Extrinsic/Statistical (extrinsic high + extrinsic low) | Fabricated 30%/2019-WWF stat |
| D | Intrinsic (intrinsic high + relational medium) | Nobel prizes swapped |
| E | Temporal + Factual (factual medium + factual medium) | Internet and Web conflated |

This is a clean 5-to-5 mapping. The only judgment call is B vs E for the
relational/causal row, noted above.

## Reflection (hardest to detect)

The hardest type to detect was the extrinsic/statistical hallucination in Text C,
because it was wrapped in the trappings of a real citation - a named organization
(WWF), a specific year (2019), and a precise figure (30%) - which is exactly the
form people accept without checking. Intrinsic errors like Curie's swapped Nobel
prizes are catchable by anyone who knows the facts, but a fabricated statistic
with a plausible source requires you to actually go look, and its confidence is
indistinguishable from a true citation. That is the core risk for my own work:
the most dangerous hallucination is not the obviously wrong one, it is the
well-dressed, source-cited claim that no one thinks to verify.
