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
## How to set dot files
1. Set environment values
```
# shell
export LINK_ZSH_CONFIG=true
export LINK_BASH_CONFIG=false

# editor
export LINK_VIM_CONFIG=true

# other application
export LINK_GIT_CONFIG=true
```

2. Link configuration files from home directory
```
zsh link_dotfiles.sh
```

## Refer following as well
- [brew](https://github.com/tatakahashi35/dotfiles/tree/main/brew)
- [vscode](https://github.com/tatakahashi35/dotfiles/tree/main/vscode)
