function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

############################################
# path
balias gcc /usr/local/bin/gcc-8
balias g++ /usr/local/bin/g++-8

# MySQL
set PATH /usr/local/opt/mysql@5.7/bin $PATH

set --export LDFLAGS -L/usr/local/opt/mysql@5.7/lib
set --export CPPFLAGS -I/usr/local/opt/mysql@5.7/include

# bits/stdc++
set --export CPLUS_INCLUDE_PATH $HOME/src/atcoder

# go
set --export GOPATH $HOME/go
set PATH $GOPATH/bin $PATH

# pyenv
set --export PYENV_ROOT $HOME/.pyenv/shims
set PATH $PYENV_ROOT $PATH

# my command
set --export MY_COMMAND $HOME/command
set PATH $MY_COMMAND/src $PATH

# right_prompt
set -g theme_date_format "+%Y-%m-%d_%T"

# alias
# balias python python3




