BFPG Talks Static Site
======================

This hakyll source generates the static HTML that is show at http://talks.bfpg.org. This static site is served from this gh-page branch: https://github.com/bfpg/talks/tree/gh-pages

To setup a dev environment:
```
git glone git@github.com:bfpg/talks.git 
git clone git@github.com:bfpg/talks.git talks-deploy
cd talks-deploy
git checkout gh-pages
cd ../talks
cabal run watch # <-- For a dev build loop
cabal run deploy # <-- To build the code and push it to the remote gh-pages branch
