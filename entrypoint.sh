#!/bin/bash 

echo "================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_EMAIL}"
git config --global u --add safe.directory /github/workspace

python /usr/bin/feed.py


git add -A && git commit -m "Update Feed"
git puch --set-upstream origin main 

echo "================="
