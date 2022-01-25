#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

sh /home/jandr/.screenlayout/def.sh

setxkbmap -layout us

picom --config /home/jandr/.config/picom/picom.config
picom -f&
