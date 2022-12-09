#!/usr/local/bin/zsh

echo 'rm Brewfile'
rm ./Brewfile

echo 'create Brewfile'
brew update-reset
brew bundle dump
