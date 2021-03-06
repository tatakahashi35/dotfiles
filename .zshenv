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
export CPLUS_INCLUDE_PATH="$HOME/atcoder"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv/shims"
# export PATH="$PYENV_ROOT:$PATH"
# eval "$(pyenv init -)"

#chromedriver
export CHOROMEDRIVER_PATH="$HOME/.chromedriver/chromedriver"
export PATH="$CHOROMEDRIVER_PATH:$PATH"

export MY_COMMAND="$HOME/command"
export PATH="$MY_COMMAND:$MY_COMMAND:$PATH"

export ATCODER_TESTCASE="$HOME/.atcoder-testcase"
alias atcoder-testcases="python $HOME/atcoder_testcase/main.py"
alias atc="python $HOME/atcoder_testcase/main.py"

alias graph_drawing="python $HOME/graph/main.py"

#####

alias gcc="/usr/local/bin/gcc-10"
alias g++="/usr/local/bin/g++-10"
