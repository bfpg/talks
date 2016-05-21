---
title: Stacking your Monads
author: Ben Kolera
twitter: benkolera
event: 219978846
ytid: pzouxmWiemg
slides: http://stackingyourmonads.benkolera.com/#/
source: https://github.com/benkolera/talk-stacking-your-monads
---
A common hurdle in the journey to serious FP use is being able to
make the jump from functional programming in the small to being able
to write non-trivial applications that are easily configurable and
clearly delineate side effects and error conditions.

In this talk, we will introduce ExceptT and run through what you need
to know to consume a monad transformer as a user. We'll then combine
this with ReaderT for configuration and then look into the lovely
MonadReader, MonadError and MonadIO typeclasses and how they make
things even nicer.

At the very least, with this knowledge you should start having a much
easier time consuming effectful haskell APIs (e.g. Persistent, Snap)
as they are heavily based around these ideas. At best, you'll be
equipped to start writing non-trivial FP programs for fun and profit.

The talk will be accompanied with a full-working program that you'll
be able to tinker with and learn from outside of the talk; written in
much the same style as the production haskell code written at iseek.
