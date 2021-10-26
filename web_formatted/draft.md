---
title: Draft
author: Yoann Trellu
date: 11.10.2021
---

We previously motivated the need for a unified education of engineered systems,
as well as abstraction tools. We also mentioned the three keys of any
well-designed language.

To build a coherent whole, here is a starting point.

```ocaml
(* Bruijn index *)
type index = int

type term =
  | Var of index
  | Lam of term
  | App of term * term
```

Our goal will be to formulate the statements from Tarski's book with this
language. One consequence is that a compiler will help us verify that our
logic and proofs are sound.

Another goal is that we are translating a mathematical statement with code.

Finally, we hope to achieve an incremental understanding:

- The whole theorem is broken down into well-defined pieces
- Each piece clearly states its assumptions & outcome
- Thus a learning sequence can be extracted.

Extracting a learning sequence forces us to decide between

- Slowly relaxing the assumptions for a given outcome
- Slowly strengthening the outcome for given assumptions
- Alternating between both during the sequence

One might also wonder, building an understanding here should not only focus
on a given result. That understanding should be a world getting richer
and richer. In that case, starting from the axioms is coherent.

Using the same label in the input of the function is asking the compiler
to add an equality check. This means it won't go through the type checking.
TODO:

- Describe steps
    - Reproduce statement as in book
    - Extract required types
    - Define if necessary required types
    - Find out how to express non-trivial assumptions
    - (Combinatory completeness) represent the polynomial function with combinators

The pedagogical tool. A universal translator accepting a breadth of inputs.
Output is a documented, structured understanding of the object.
The understanding would also be translated to a graphical representation (DAGs).
So that understanding will be about linking a set of hypothesis to a result.
An environment to an observable.

Applying a unified view to finance:

- Insurances have a recurring predictable cost for unpredictable events
- Shares have a one-time predictable cost (share price) for recurring
  predictable events (dividends).

Examples of insurance products:

- Rope (continuous weight cost, for unpredictable events)
- Rights


