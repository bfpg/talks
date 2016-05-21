---
title: Unravelling 'bound'
author: David Laing
event: 226707022
---
Haskell makes it easy to write embedded domain specific languages (EDSLs).

Making the lamba calculus - variables, lambda abstraction and function
application - part of our EDSLs gives us the ability to abstract and reuse
fragments of programs in our EDSL, but can also add significant complexity to
the implementation of the EDSL.

The `bound` library greatly simplifies this for us. This means we can add some
functionality to our EDSL very cheaply, or possibly that it solves a problem we
didn't know we had.

This talk will walk through why having the lambda calculus as part of your EDSL
is a good thing, how to make that happen using `bound`, and some of the fun we
can once we've done that.
