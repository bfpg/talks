---
title: Exact Real Arithmetic in Haskell
author: Mitchell Riley
event: 221830899
ytid: LJQgYBQFtSE
---
Exact real arithmetic allows us to do computations without worrying about
precision or rounding. In contrast with arbitrary precision arithmetic, we only
need to specify an output precision and the details for intermediate steps are
handled automatically.

In this talk we will implement exact real arithmetic in two very different
ways. First, the "fast binary Cauchy" system amounts to representing each real
as a function Natural -> Rational, such that each successive output is a closer
approximation to the true value than the last. The second system represents
each real number as a continued fraction; an infinite tower of sums and
reciprocals. Both systems benefit from a functional programming style and the
resulting code is very simple to understand.