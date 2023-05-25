#!/bin/bash
#simple script to install my dots
USER="will"
HOME="/home/$USER"
PKG_MAN_OPENBSD="pkg_add"
PKG_MAN_FREEBSD="pkg install -y"
PKG_MAN_VOID="xbps-install"
PKG_LIST_UNI="xorg feh lynx mpv zathura zathura-pdf-mupdf qutebrowser vim vifm chafa neofetch bash"
PKG_LIST_VAR="curl wget"
PKG_LIST_FREEBSD=""

exec chsc -s bash will & # Set bash as default shell

# git repos
exec git clone https://github.com/africavoid/dwm &
exec git clone https://github.com/africavoid/dwl &
exec git clone https://github.com/africavoid/dots &
exec git clone https://github.com/africavoid/slstatus &
exec git clone https://github.com/africavoid/st &

# installing software
exec $PKG_MAN_OPENBSD $PKG_LIST_UNI &

# Making folders
exec mkdir $HOME/Programs &
exec mkdir $HOME/Media &
exec mkdir $HOME/Media/Music &
exec mkdir $HOME/Media/Movies &
exec mkdir $HOME/Downloads & 

exec cp -r dots/.config  $HOME/.config &
exec cp -r dots/.fonts $HOME/.fonts &
exec cp -r dots/.bashrc $HOME/.bashrc &
exec cp -r dots/.xinitrc $HOME/.xinitrc &
