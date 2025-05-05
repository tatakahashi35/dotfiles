# shell
# bash
echo LINK_BASH_CONFIG: ${LINK_BASH_CONFIG}
if [[ ${LINK_BASH_CONFIG} == "true" ]] then
    echo "Link bash configuration files."
    ln -nfs ~/dotfiles/apps/bash/.bash_profile ~/.bash_profile
    ln -nfs ~/dotfiles/apps/bash/.bashrc ~/.bashrc
fi
echo

# zsh
echo LINK_ZSH_CONFIG: ${LINK_ZSH_CONFIG}
if [[ ${LINK_ZSH_CONFIG} == "true" ]] then
    echo "Link zsh configuration files."
    ln -nfs ~/dotfiles/apps/zsh/.zprofile ~/.zprofile
    ln -nfs ~/dotfiles/apps/zsh/.zshenv ~/.zshenv
    ln -nfs ~/dotfiles/apps/zsh/.zshrc ~/.zshrc
fi
echo

# editor
# vim
echo LINK_VIM_CONFIG: ${LINK_VIM_CONFIG}
if [[ ${LINK_VIM_CONFIG} == "true" ]] then
    echo "Link vim configuration files."
    ln -nfs ~/dotfiles/apps/vim/.vimrc ~/.vimrc
fi
echo

# other application
# git
echo LINK_GIT_CONFIG: ${LINK_GIT_CONFIG}
if [[ ${LINK_GIT_CONFIG} == "true" ]] then
    echo "Link git configuration files."
    ln -nfs ~/dotfiles/apps/git/.gitconfig ~/.gitconfig
    ln -nfs ~/dotfiles/apps/git/.gitignore_global ~/.gitignore_global
fi
echo
