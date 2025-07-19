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
# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"

#xhost +

#if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 2 ]; then
#    dbus-run-session sway
#fi

dock_pc() {
  autorandr --change docked-vert
  nmcli r wifi off
}

undock_pc() {
  nmcli r wifi on
  autorandr --change mobile
}
