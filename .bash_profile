#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -z "$DISPLAY" ]; then 
  if [ "$XDG_VTNR" = 1 ]; then 
    exec dbus-run-session sway
  elif [ "$XDG_VTNR" = 2 ]; then
    exec startx
  fi
fi
