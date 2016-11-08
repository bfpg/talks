---
title: Functional Programming in Aviation
author: Tony Morris
twitter: dibblego
event: 231851733
ytid: cXm6bPQeaHs
---
In this talk & demo, we have a look at some of the problems in general aviation
as well as air transport (passenger & freight). The current solutions to
problems such as navigation, traffic and terrain collision avoidance and flight
scheduling are clumsy, unreliable and impossible to extend. Other problems in
aviation involve tragic events such as Malaysian Air Flight 370 and EgyptAir
flight 804.

These problems continue to exist because of the properties of current avionics
and the unfortunate data management techniques that must inevitably follow.
Proprietary hardware and software continues to limit the field of aviation,
where low-cost, open, extensible solutions can otherwise exist. As field
experts in computer science, we have a duty to inform industry of our
specialised endeavours so that they may exploit those advances.

A live demonstration of a software define radio device acting as a receiver for
automatic aircraft transmissions (ADS-B) and location (GPS) will be deployed
and the Haskell programming language will interface with the device to obtain
live aircraft data. Queries of the live data are made using the Haskell lens
library and various other appropriate data structures. Other sensors on this
cheap, garage-made electronic device include barometric pressure, magnetic
compass and accelerometer for roll, pitch & yaw.

We all regularly wear our earphones to write code, in a tube that flies through
unbreathable air at over half the speed of sound, monitored by a system
developed in 1978. Meanwhile, John Backus was writing his ACM Turing-award
winning paper on being liberated from von Neumann style. Not cool.
