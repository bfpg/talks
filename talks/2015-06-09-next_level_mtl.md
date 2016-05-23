---
title: Next Level MTL with Classy Optics
author: George Wilson
twitter: GeorgeTalksCode
event: 221830861
ytid: GZPup5Iuaqw
---
Many applications leverage monad transformer stacks to control IO effects,
handle error conditions, pass configurations, and more. As the requirements of
these applications grow, the complexity of these transformer stacks can grow
proportionally. If a specific monad transformer stack is used in type
signatures, then small changes to the stack can result in large changes to the
code. This talk will demonstrate tools from the mtl and the lens library that
allow each function's type to describe the required parts of a transformer
stack, without depending on the concrete stack itself.