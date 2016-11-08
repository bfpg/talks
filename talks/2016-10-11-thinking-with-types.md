---
title: Thinking with Types
author: Ben Kolera
twitter: benkolera
event: 234104100
ytid: -LPQ5D9MFkk
---
A core restriction of functional programming is that functions can only use
their inputs to calculate their output and thus must always return the same
output for a given input. This has the lovely effect that we can reason about
what a function does purely by the the types of their inputs and outputs and
use that knowledge when refactoring and composing functional programs.

The types are our key to reducing the possibilities of inputs and outputs of
our functions. As we reduce the possibilities and weaken what our function can
actually do, we make our function easier to reasonable about and thus easier to
safely compose. In this talk, we will go through the tools that we have in the
purescript programming language to make this local reasonability more and more
powerful.

* Product types
* Sum types
* Parametricity
* Parametricity + Typeclasses
* Extensible Effect Tracking

This should be a beginner level talk that will presume no knowledge of
purescript, FP or Haskell-like syntax.
