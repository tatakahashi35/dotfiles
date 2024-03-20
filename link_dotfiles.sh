# shell
# bash
if [[ $LINK_BASH_CONFIG == "true" ]] then
    ln -nfs ~/dotfiles/bash/.bash_profile ~/.bash_profile
    ln -nfs ~/dotfiles/bash/.bashrc ~/.bashrc
fi

# zsh
if [[ $LINK_ZSH_CONFIG == "true" ]] then
    ln -nfs ~/dotfiles/zsh/.zprofile ~/.zprofile
    ln -nfs ~/dotfiles/zsh/.zshenv ~/.zshenv
    ln -nfs ~/dotfiles/zsh/.zshrc ~/.zshrc
fi

# editor
# vim
if [[ $LINK_VIM_CONFIG == "true" ]] then
    ln -nfs ~/dotfiles/vim/.vimrc ~/.vimrc
fi

# other application
# git
if [[ $LINK_GIT_CONFIG == "true" ]] then
    ln -nfs ~/dotfiles/git/.gitconfig ~/.gitconfig
fi
