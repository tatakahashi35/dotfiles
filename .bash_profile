echo hello! .bash_profile 

test -r $HOME/.bashrc && . $HOME/.bashrc

#alias gcc="/usr/local/bin/gcc-8"
#alias g++="/usr/local/bin/g++-8"

export PATH="${PATH}:usr/local/bin"

# go
export GOPATH="${HOME}/go"
export PATH="${PATH}:${GOPATH}/bin"

# mysql
export PATH="${PATH}:/usr/local/opt/mysql@5.7/bin"

export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"

# bits/stdc++
export CPLUS_INCLUDE_PATH="$HOME/src/atcoder"

# pyenv
export PYENV_ROOT="$HOME/.pyenv/shims"
export PATH="$PYENV_ROOT:$PATH"
eval "$(pyenv init -)"
