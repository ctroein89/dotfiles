#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update && brew upgrade

brew install git
brew install nvim go rust node tmux tree watch jq discord docker git-delta
brew install --cask font-monaspace
cp .gitconfig ~/.gitconfig
