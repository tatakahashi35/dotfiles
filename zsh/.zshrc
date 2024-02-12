# echo hello! .zshrc

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# c++
# bits/stdc++
export CPLUS_INCLUDE_PATH="$HOME/atcoder"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
fi


# go
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"

#dotnet
export PATH="/usr/local/share/dotnet:${PATH}"

# mysql
export PATH="${PATH}:/usr/local/opt/mysql@5.7/bin"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

#chromedriver
export CHOROMEDRIVER_PATH="$HOME/.chromedriver/chromedriver"
export PATH="$CHOROMEDRIVER_PATH:$PATH"

# my command
export MY_COMMAND="$HOME/command"
export PATH="$MY_COMMAND:$MY_COMMAND:$PATH"

# openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"
export PATH="/usr/local/sbin:$PATH"

# zsh 設定
setopt prompt_subst
TMOUT=1
TRAPALRM() {
    if [ "$WIDGET" != "expand-or-complete" ]; then
        zle reset-prompt
    fi
}
PROMPT='%D{%Y-%m-%d %H:%M:%S} %F{green}%n:%(5~,%-1~/.../%2~,%~) $%f '

# 補完
autoload -U compinit
compinit -u

setopt correct
SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "

setopt auto_cd
setopt auto_pushd

# 色
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"


HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt share_history

autoload history-search-end

# alias
# c++
alias gcc="/usr/local/bin/gcc-12 -Wall -O2 -std=c++17 -I/usr/local/Cellar/boost/1.75.0_1 --sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk"
alias g++="/usr/local/bin/g++-12 -Wall -O2 -std=c++17 -I/usr/local/Cellar/boost/1.75.0_1 --sysroot=/Library/Developer/CommandLineTools/SDKs/MacOSX10.15.sdk"

# grep
alias grep='grep --color'
# alias diff="coloddiff"

#brew
alias brews='brew update-reset && brew update && brew upgrade && brew upgrade --cask'

# git
alias g="git"

alias gs='git status'

alias gb='git branch'
alias gba='git branch -a'

alias gd='git diff'

alias gch='git checkout'
alias gchb='git checkout -b'


alias ga='git add'

alias gcm='git commit -m'

alias gm='git merge'

alias gpso='git push origin'

alias gplo='git pull origin'
alias gf='git fetch'

# logを見やすく
alias gl='git log --abbrev-commit --no-merges --date=short --date=iso'
# grep
alias glg='git log --abbrev-commit --no-merges --date=short --date=iso --grep'
# ローカルコミットを表示
alias glc='git log --abbrev-commit --no-merges --date=short --date=iso origin/html..html'

export PATH="$HOME/.poetry/bin:$PATH"
