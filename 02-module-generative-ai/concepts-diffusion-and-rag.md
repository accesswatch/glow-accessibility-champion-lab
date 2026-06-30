# Concepts: How Diffusion Models Generate Images, and How RAG Grounds LLM Output

Written evidence for Module 2 learning objective 4. In my own words, with the
accessibility connection that makes each concept matter for my role.

## How diffusion models generate images

A diffusion model learns to create images by learning to reverse the act of
destroying them.

- Training has two directions. In the forward process, the model takes real
  training images and adds small amounts of random (Gaussian) noise step by step,
  over many steps, until an image is indistinguishable from static. In the reverse
  process, a neural network (commonly a U-Net) is trained to predict and remove
  the noise that was added at each step.
- Generation runs the reverse process from scratch. The model starts from a field
  of pure random noise and denoises it step by step. After each step the image is
  slightly less noisy and slightly more coherent, until a finished image emerges.
- A text prompt steers the denoising. The words are turned into a numeric
  representation by a text encoder (for example CLIP), and that representation
  guides each denoising step toward an image that matches the prompt. A technique
  called classifier-free guidance controls how strongly the result is pulled
  toward the prompt.
- Efficiency: modern systems such as Stable Diffusion run this process in a
  compressed "latent" space rather than on full-resolution pixels, then decode the
  result back to an image. This is why they are fast enough to run widely.

The key intuition: the model is not retrieving or copying a picture, and it is not
reasoning about facts. It is sampling a plausible image by repeatedly removing
noise under the guidance of the prompt.

Accessibility connection: a generated image is plausible, not factual or
self-describing. It still needs human-authored alt text that conveys the image's
purpose in context, and the same probabilistic nature that makes a face look right
can render text, charts, or signage as convincing nonsense, which is an
accessibility and accuracy problem if such an image is used uncritically.

## How RAG grounds LLM output

Retrieval-Augmented Generation (RAG) reduces hallucination by giving the model the
right source text at the moment it answers, instead of relying only on what it
memorized during training.

- The problem it addresses: a plain LLM answers from parameters baked in at
  training time. That knowledge can be stale, incomplete, or confidently wrong,
  and the model has no source to point to.
- Indexing (done ahead of time): authoritative documents are split into chunks,
  each chunk is converted into an embedding (a vector capturing its meaning), and
  the vectors are stored in a searchable index.
- Retrieval (at query time): the user's question is embedded the same way, and the
  system finds the chunks whose vectors are most similar to the question, i.e. the
  passages most likely to be relevant.
- Generation: those retrieved passages are inserted into the prompt as context,
  and the model is instructed to answer using that context, ideally citing which
  passage each claim came from.
- The payoff: answers are anchored to specific, current, authoritative sources;
  knowledge can be updated by changing the documents rather than retraining the
  model; and citations make claims checkable.
- The limits: RAG narrows hallucination but does not eliminate it. If retrieval
  surfaces the wrong passage, the answer is grounded in the wrong thing; the model
  can still misread or add unsupported claims beyond the retrieved text. Output
  still needs verification.

Accessibility connection: my highest hallucination risk is an extrinsic factual
claim, such as an invented WCAG criterion or an overstated legal obligation. RAG
is the structural defense: grounding answers in the actual W3C/WAI standard, UA
policy, and DRC guidance, with citations, instead of the model's unverified
memory. This is exactly the role NotebookLM plays in my Task 4 toolset, since it
only answers from documents I upload, and it is why I treat grounding plus human
verification, not better prompt wording alone, as the real fix for standards
claims.
