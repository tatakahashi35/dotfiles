echo hello .bash_rc

PS1="\[\033[32m\]\h:\W $ \[\033[0m\]"

alias grep='grep --color'

HISTTIMEFORMAT='%Y-%m-%d %T $ '
. "$HOME/.cargo/env"
