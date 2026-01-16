#!/bin/bash

git_branch=$(git symbolic-ref --short HEAD 2>/dev/null)

if [ -n "$git_branch" ]; then
    if [ -n "$(git status --porcelain)" ]; then
        git_branch+="*"
    fi
    echo "on $git_branch"
fi
