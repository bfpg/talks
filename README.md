BFPG Talks Static Site
======================

[![Build Status](https://travis-ci.org/bfpg/talks.svg?branch=master)](https://travis-ci.org/bfpg/talks)

This [Hakyll](https://jaspervdj.be/hakyll/) source generates the static HTML
that is shown at [http://talks.bfpg.org](http://talks.bfpg.org).

The static site is served from [GitHub Pages](https://github.com/bfpg/talks/tree/gh-pages).

Dev environment setup
---------------------

Before running the following,
[install stack](http://docs.haskellstack.org/en/stable/README/#how-to-install)
if you haven't already.

```
git clone git@github.com:bfpg/talks.git bfpg-talks
cd bfpg-talks

stack build
stack exec site build # <-- Generate files in ./_site/
stack exec site watch # <-- For a dev build loop
```

Contributing
------------

Fork [bfpg/talks](https://github.com/bfpg/talks), make your changes on `master`
and submit a PR.

The [Travis CI job](https://travis-ci.org/bfpg/talks) will build the site and
publish to `gh-pages` once your commit is merged.
