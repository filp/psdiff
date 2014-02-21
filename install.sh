#!/usr/bin/env bash

set -e # Fail if any command exits with nonzero status

if
  [[ ! -d .git ]]
then
  echo "Hey! You need to run this in the root of a git repository!"
  exit
fi

mkdir -p ".git/hooks" # We need this if it doesn't exist!
cd ".git/hooks"

# Get ze file
curl "https://raw2.github.com/filp/psdiff/master/git/hooks/pre-commit" -o "pre-commit"

# Add execution bits to the user
chmod u+x "pre-commit"
