#!/usr/local/bin/zsh

echo 'rm Brewfile'
rm ./Brewfile

echo 'create Brewfile'
brew bundle dump
