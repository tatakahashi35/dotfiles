echo hello! .zshenv

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#####

export PATH="${PATH}:/usr/local/bin"

# go
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"

#dotnet
export PATH="/usr/local/share/dotnet:${PATH}"

# mysql
export PATH="${PATH}:/usr/local/opt/mysql@5.7/bin"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

# bits/stdc++
export CPLUS_INCLUDE_PATH="$HOME/src/atcoder"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv/shims"
# export PATH="$PYENV_ROOT:$PATH"
# eval "$(pyenv init -)"

#chromedriver
export CHOROMEDRIVER_PATH="$HOME/.chromedriver/chromedriver"
export PATH="$CHOROMEDRIVER_PATH:$PATH"

export MY_COMMAND="$HOME/command"
export PATH="$MY_COMMAND/src:$MY_COMMAND:$PATH"

export ATCODER_TESTCASE="$HOME/.atcoder-testcase"

#####

alias gcc="/usr/local/bin/gcc-9"
alias g++="/usr/local/bin/g++-9"
