# dotfiles
This repository is for managing configuration files.

# Directory
## shell
- bash
- fish
- zsh

## editor
- vim
- vscode

## other application
- brew
- git

# How to use
1. Set environment values
```
# shell
LINK_ZSH_CONFIG=true
LINK_BASH_CONFIG=false

# editor
LINK_VIM_CONFIG=true
```

2. Link configuration files from home directory
```
zsh link_dotfiles.sh
```
