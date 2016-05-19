#!/bin/bash
set -e # Exit with nonzero exit code if anything fails

SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"

function doCompile {
  stack --no-terminal build
  stack --no-terminal exec site build
}

# Pull requests and commits to other branches shouldn't try to deploy, just build to verify
if [ "$TRAVIS_PULL_REQUEST" != "false" -o "$TRAVIS_BRANCH" != "$SOURCE_BRANCH" ]; then
    echo "Skipping deploy; just doing a build."
    doCompile
    exit 0
fi

# Save some useful information
REPO=`git config remote.origin.url`
SSH_REPO=${REPO/https:\/\/github.com\//git@github.com:}
SHA=`git rev-parse --verify HEAD`

# Clone the existing gh-pages for this repo into _site/
# Create a new empty branch if gh-pages doesn't exist yet (should only happen on first deploy)
git clone $REPO _site
cd _site
git checkout $TARGET_BRANCH || git checkout --orphan $TARGET_BRANCH
cd ..

# Clean out existing contents
rm -rf _site/**/* || exit 0

# Run our compile script
doCompile

# Now let's go have some fun with the cloned repo
cd _site
git config user.name "Travis CI"
git config user.email '<>'

# If there are no changes to the compiled out (e.g. this is a README update) then just bail.
if git diff --quiet ; then
    echo "No changes to the output on this push; exiting."
    exit 0
fi

# Commit the "changes", i.e. the new version.
# The delta will show diffs between new and old versions.
git add --all .
git commit -m "Deploy to GitHub Pages: ${SHA}"

# Setup SSH keys
openssl aes-256-cbc -K $encrypted_bf200f1b2bff_key -iv $encrypted_bf200f1b2bff_iv -in ../deploy_key.enc -out deploy_key -d
chmod 600 deploy_key
eval `ssh-agent -s`
ssh-add deploy_key

# Push our changes
git push $SSH_REPO $TARGET_BRANCH
