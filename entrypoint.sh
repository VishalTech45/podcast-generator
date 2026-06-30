#!/bin/bash 
set -e

echo "================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_ACTOR}@users.noreply.github.com"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py


git add -A 
git commit -m "Update Feed" || echo "No change to commit"
git push --set-upstream origin main 

echo "================="
