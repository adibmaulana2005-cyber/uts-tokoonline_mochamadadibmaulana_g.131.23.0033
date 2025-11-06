#!/bin/sh
# Usage: sh git-setup.sh <GITHUB_REMOTE_URL> "<REPO_NAME>"
REMOTE_URL="$1"
REPO_NAME="$2"
if [ -z "$REMOTE_URL" ]; then
  echo "Provide remote URL, e.g. git@github.com:username/uts-toko-online-filament.git"
  exit 1
fi
git init
git add .
git commit -m "UTS: toko online filament skeleton"
git branch -M main
git remote add origin "$REMOTE_URL"
git push -u origin main
echo "Pushed to $REMOTE_URL"
