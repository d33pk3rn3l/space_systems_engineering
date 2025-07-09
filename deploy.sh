#!/usr/bin/env bash

CURRENT_BRANCH=$(git branch --show-current)

nix-build
RESULT=$(readlink result || echo result)

TMP_DIR=$(mktemp -d)
git fetch origin gh-pages || true
git worktree add --force --checkout "$TMP_DIR" gh-pages

rm -rf "$TMP_DIR"/*
cp -r "$RESULT"/. "$TMP_DIR"
cd "$TMP_DIR"
git add .
git commit -m "Deploy to gh-pages - $(date)"
git push origin gh-pages --force

cd -
git worktree remove "$TMP_DIR" || true
