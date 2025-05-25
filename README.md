# dotfiles
This repository is for managing configuration files.

# How to use
## How to set configuration files
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

   Set [[user]](https://github.com/tatakahashi35/dotfiles/blob/main/apps/git/.gitconfig#L1-L3)

3. Link configuration files from home directory
    ```
    zsh src/link_dotfiles.sh
    ```

## How to install libraries
- [brew](https://github.com/tatakahashi35/dotfiles/tree/main/apps/brew)
- [vscode](https://github.com/tatakahashi35/dotfiles/tree/main/apps/vscode)

## How to update libraries described in this repository
1. Run this script then a new PR will be created.
    ```
    zsh src/update_libraries.sh
    ```
2. Review and merge it.

### Create the PR automatically
1. Create .plist file using template
    ```
    cat src/template_update_libraries.plist | sed s:{USER}:${USER}:g | sed s:{GITHUB_TOKEN}:GITHUB_TOKEN:g > src/update_libraries.plist
    ```
2. copy .plist file
    ```
    sudo cp src/update_libraries.plist ~/Library/LaunchAgents/com.github.tatakahashi35.dotfiles.update_libraries.plist
    ```
3. Add to launchd with referring https://zenn.dev/tata/articles/8ac2a832d77670.
