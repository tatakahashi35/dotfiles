#!/usr/local/bin/zsh

DOTFILES=dotfiles

link() {
    # ホームディレクトリからレポジトリ内の dotfile に向けてリンクを張る
    FILE=$1
    ln -nfs ~/$DOTFILES/$FILE ~/$FILE
}

# zsh
link .zprofile
link .zshenv
link .zshrc

# bash
link .bash_profile
link .bashrc

# vim
link .vimrc
