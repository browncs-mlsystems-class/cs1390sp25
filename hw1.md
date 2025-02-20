---

CSCI 1390, Spring 2025: Written HW 1
==================================================================

Due Date: Thursday, February 27, 6 PM. You CANNOT use late hours on the
written homework.

Read the following paper excerpts, and answer the questions below. Submit
your answers as a single PDF on gradescope
[here](https://www.gradescope.com/courses/987745).
TAs won't be answering questions about the writeup in office hours; you should
be able to answer the questions below merely with reading comprehension.


```{=html}
<hr style="border: none; border-top: 1px solid lightgrey; margin: 20px 0;">
```

## Reading

- [PipeDream](https://deepakn94.github.io/assets/papers/pipedream-sosp19.pdf) -- All Sections.

- [Megatron-LM](https://arxiv.org/pdf/1909.08053) -- All Sections.

- [Efficient Large-Scale Language Model Training on GPU Clusters Using Megatron-LM](https://arxiv.org/pdf/2104.04473) -- Sections 1, 3, Skim Evaluation.

## Questions

The total length of your response should be about 600-700 words, with
approximate breakdowns specified below. Please adhere to the breakdowns; you will be
penalized, for example, if your summarization is too long, and the other answers
are too short.
Additionally, we expect you to cite specific examples and evidence from the
papers when answering the questions.

### Summarization (300-400 words total)
1. What were the key challenges that the PipeDream paper solved to get
   pipeline parallelism working well in practice (150 words)?
2. What are the advantages of tensor model parallelism over pipeline model
   parallelism; why was it chosen to
   train transformers (150 words)?
3. Answer for both the pipedream and megatron-LM papers (100 words) : What are key weaknesses and
   strengths in either paper? You can discuss weaknesses and strengths of how
they framed the problem, or of the solution and the solution's applicability.

### Comprehension  (200 words)

3. Why does the third paper explore combining parallelism strategies? What
   in this setting is different making it such that no one strategy alone is
sufficient? Why is their method effective over any single parallelism
strategy?

### Synthesis (100-200 words)

4. Consider the workload of inference rather than training. Most transformer
   model weights will not fit on a single GPU. What parallelism
strategy would you deploy and why?

