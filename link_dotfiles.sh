DOTFILES=dotfiles

link() {
    # ホームディレクトリからレポジトリ内の dotfile に向けてリンクを張る
    DIR=$1
    FILE=$2
    ln -nfs ~/$DOTFILES/$DIR/$FILE ~/$FILE
}

# zsh
if [[ $LINK_ZSH_CONFIG == "true" ]] then
    link zsh .zprofile
    link zsh .zshenv
    link zsh .zshrc
fi

# bash
if [[ $LINK_BASH_CONFIG == "true" ]] then
    link bash .bash_profile
    link bash .bashrc
fi

# vim
if [[ $LINK_VIM_CONFIG == "true" ]] then
    link vim .vimrc
fi
