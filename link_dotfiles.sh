DOTFILES=dotfiles

link() {
    # ホームディレクトリからレポジトリ内の dotfile に向けてリンクを張る
    DIR=$1
    FILE=$2
    ln -nfs ~/$DOTFILES/$DIR/$FILE ~/$FILE
}

# zsh
link zsh .zprofile
link zsh .zshenv
link zsh .zshrc

# bash
link bash .bash_profile
link bash .bashrc

# vim
link vim .vimrc
