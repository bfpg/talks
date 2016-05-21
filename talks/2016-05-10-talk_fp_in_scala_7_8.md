---
title: Functional Programming in Scala Chapters 7 & 8
author: Matt Newman
twitter: mdjnewman
slides: http://mdjnewman.github.io/talk-fp-in-scala-7-8/
event: 230099578
---
Firstly, we delve into writing a library for doing parallel computation in a
purely functional way. This gives us a chance not only to examine parallelism,
but to also to examine how to write modular functional libraries by separating
the description of a computation (via algebras) vs actually running them.

Secondly, we will write a property based testing library through which we can
write high level specifications of the laws that we expect to hold for our
program and have other machinery generate test data and provide counterexamples
if our properties fail. Through this journey, we will start seeing the
similarities between this API design and our parallel execution library, which
will allow us to start teasing out the essence of writing purely functional
libraries.