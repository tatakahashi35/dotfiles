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

2. Set git user if needed

   Set [[user]](https://github.com/tatakahashi35/dotfiles/blob/main/git/.gitconfig#L1-L3)

4. Link configuration files from home directory
    ```
    zsh link_dotfiles.sh
    ```

## Refer following as well
- [brew](https://github.com/tatakahashi35/dotfiles/tree/main/brew)
- [vscode](https://github.com/tatakahashi35/dotfiles/tree/main/vscode)

## How to update libraries described in this repository
1. Run this script then a new PR will be created.
    ```
    zsh src/update_libraries.sh
    ```
2. Review and merge it.

### Create the PR automatically
1. Create a .plist file using template
    ```
    sed s:HOME:${HOME}:g src/template_update_libraries.plist > src/update_libraries.plist
    ```
2. copy .plist file
    ```
    cp src/update_libraries.plist ~/Library/LaunchAgents/com.github.tatakahashi35.dotfiles.update_libraries.plist
    ```
3. Add to launchd with referring https://zenn.dev/tata/articles/8ac2a832d77670.
