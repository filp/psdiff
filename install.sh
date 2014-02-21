#!/usr/bin/env bash

set -e # Fail if any command exits with nonzero status

if
  [[ ! -d .git ]]
then
  echo "I ain't no fool! You need to run this in the root of a git repository!"
  exit 1
fi

command -v ruby >/dev/null 2>&1 || { echo >&2 "psdiff needs Ruby to run! Get yourself some Ruby, then try again!"; exit; }

if
  [[ "$(gem list psd -i)" == "false" ]]
then
  read -p "Damn, the 'psd' gem is not installed! Shall I fetch it now? (yes/no) " yn
  case $yn in
      [Yy]* ) echo -e "\nRunning 'gem install psd' (it might take ages, so please sit back!)"; gem install psd;;
      * ) echo -e "\nThou shalt install the 'psd' gem before proceeding!"; exit 1;;
  esac
  echo # Empty line for the pretties
fi

mkdir -p ".git/hooks" # We need this if it doesn't exist!
cd ".git/hooks"

if
  [[ -a pre-commit ]]
then
  read -p "There's a 'pre-commit' hook in '.git/hooks' already. Le overwrite? (yes/no) " yn
  case $yn in
      [Yy]* ) echo -e "\nOverwrite it be!";;
      * ) echo -e "\nThis repo ain't big enough for both of us hooks!"; exit 1;;
  esac
fi

# Get ze file
curl "https://raw2.github.com/filp/psdiff/master/git/hooks/pre-commit" -o "pre-commit"

# Add execution bits to the user
chmod u+x "pre-commit"

echo -e "\nAll done! Go ahead and give me all your PSDs!"
