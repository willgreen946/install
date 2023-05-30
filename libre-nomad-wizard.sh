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
GIT="git clone https://github.com/africavoid/"

# make dirs
mkdir $HOME/Programs
mkdir $HOME/Media
mkdir $HOME/Media/Music
mkdir $HOME/Media/Movies

#exec chsc -s bash will & # Set bash as default shell
exec $GIT\dwm &
exec $GIT\dmenu &
exec $GIT\tabbed &
exec $GIT\st &
exec $GIT\slstatus &

exec cp -r dots/.config  $HOME/.config &
exec cp -r dots/.fonts $HOME/.fonts &
exec cp -r dots/.bashrc $HOME/.bashrc &
exec cp -r dots/.xinitrc $HOME/.xinitrc &
