---
title: Combine all the Things!
author: Yoann Trellu
date: 23.07.2021
---

# What are your primitives?

>Thus, when we describe a language, we should pay particular attention to the means that the 
>language provides for combining simple ideas to form more complex ideas. Every powerful 
>language has three mechanisms for accomplishing this: 
>
>-   Primitive expressions, which represent the simplest entities the language is concerned 
>with, 
>
>-  Means of combination, by which compound elements are built from simpler ones, and 
>
>-  Means of abstraction, by which compound elements can be named and manipulated as 
>units. 

Here is a claim: education about engineered systems should always explicitly follow 
the above threefold pattern.

+--------------+------------------+----------------------+--------------------+
|              | Primitives       | Combination          | Abstraction        |
+==============+==================+======================+====================+
| Mathematics  | Axioms           | Logical Rules        | - Definitions      |
|              |                  |                      | - Theorems         |
+--------------+------------------+----------------------+--------------------+
| Sciences     | Observations     | Statistical Methods  | Models             |
+--------------+------------------+----------------------+--------------------+
| Electronics  | - Resistors,     | - Wires in parrallel | Circuit            |
|              | - capacitors     | - in Series          |                    |
|              | - ...            |                      |                    |
+--------------+------------------+----------------------+--------------------+
| Finance      | - Currencies,    | - And                | Contract           |
|              | - clocks         | - or                 |                    |
|              | - ...            | - ...                |                    |
+--------------+------------------+----------------------+--------------------+
| ...          |                  |                      |                    |
|              |                  |                      |                    |
+--------------+------------------+----------------------+--------------------+

This  pattern  can  also  be  thought  of  in  terms  of  ‘combinator 
libraries’. Given a particular topic wouldn’t one love to have such 
a library? Especially once one realizes it would directly have nice 
graphical representations? 

Set  out  to  demonstrate  this,  let  us  consider  a  well-known 
construct,  the  Pythagorean  Theorem.  One  way  to  make  the 
axioms explicit is to look at the proof described in

<p align="center">
  <img src="/tarski.jpg" />
</p>

<!---
![Tarski's geometry](/tarski.jpg)
--->

This  description  is  well  suited  since  the  whole  book  is  well 
structured  with  numbered  references.  By  following  these 
references, one is able to construct a directed graph. Below is 
what we get when blindly following them. Nodes are labeled just 
like  in  the  book,  with  the  top  node  (without  incoming  arrows) 
mentioning its name: the Pythagoras Theorem. The bottom of the 
graph contains the required axioms, from A1 to A9.

![From axioms to propositions, to Pythagoras theorem](/graph_pythagoras.png)

This graph needs some more work before being useful. In the next parts, we will go over 
general techniques to improve its readability, and more...

# Bibliography

- Sussman, G. J., Abelson, H. (1985). Structure and Interpretation of Computer Programs. The MIT Press.

- [lexifi.com/pdf/contracts.pdf](https://lexifi.com/pdf/contracts.pdf).

-  W. Schwabhäuser, W. Szmielew, A. Tarski (1983). Metamathematische Methoden in der 
Geometrie. Springer, Berlin, Heidelberg. 
