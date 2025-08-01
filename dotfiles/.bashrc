#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

export PATH="$PATH:$HOME/.local/bin:$HOME/.local/share/gem/ruby/3.3.0/bin"

alias vim="nvim -p"
alias yay="paru"
alias ssh="TERM=xterm-256color ssh"
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/.bin:$HOME/gems/bin:$PATH"

PROMPT_COMMAND='
  PS1_branch=""
  branch=$(git branch --show-current 2>/dev/null)
  if [ -n "$branch" ]; then
    PS1_branch="($branch)"
  fi
'
PS1=' \[\e]0;\w\a\]\[\e[38;5;245m\]\w\[\e[0m\]\[\e[38;5;111m\]${PS1_branch:+ $PS1_branch}\[\e[0m\] \[\e[38;5;49m\]\\$\[\e[0m\] '


dock_i3() {
  autorandr --change docked-vert
  nmcli r wifi off
}

undock_i3() {
  nmcli r wifi on
  autorandr --change mobile
}
