# shell
# bash
echo LINK_BASH_CONFIG: ${LINK_BASH_CONFIG}
if [[ ${LINK_BASH_CONFIG} == "true" ]] then
    ln -nfs ~/dotfiles/bash/.bash_profile ~/.bash_profile
    ln -nfs ~/dotfiles/bash/.bashrc ~/.bashrc
fi

# zsh
echo LINK_ZSH_CONFIG: ${LINK_ZSH_CONFIG}
if [[ ${LINK_ZSH_CONFIG} == "true" ]] then
    ln -nfs ~/dotfiles/zsh/.zprofile ~/.zprofile
    ln -nfs ~/dotfiles/zsh/.zshenv ~/.zshenv
    ln -nfs ~/dotfiles/zsh/.zshrc ~/.zshrc
fi

# editor
# vim
echo LINK_VIM_CONFIG: ${LINK_VIM_CONFIG}
if [[ ${LINK_VIM_CONFIG} == "true" ]] then
    ln -nfs ~/dotfiles/vim/.vimrc ~/.vimrc
fi

# other application
# git
echo LINK_GIT_CONFIG: ${LINK_GIT_CONFIG}
if [[ ${LINK_GIT_CONFIG} == "true" ]] then
    ln -nfs ~/dotfiles/git/.gitconfig ~/.gitconfig
    ln -nfs ~/dotfiles/git/.gitignore_global ~/.gitignore_global
fi
