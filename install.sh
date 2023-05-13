# This is my install script for my dot files
# Make sure you have git installed
# Change this for the user you want to deploy
USER="will"
DOAS="permit will as root"

# This is the package manager command
# change this to your package manager
# all install files should be avaliable on all/most linux and bsd's
PKG="pkg install -y"

# Change these to packages you want installed
PKGS="drm-kmod mixertui wlroots evdev-proto libinput smartmontools fontawesome6 pkgconf neovim vifm zathura zathura-pdf-mupdf tmeson ninja tuifeed htop wayland seatd foot wget doas curl librewolf"  

# Dotfiles
exec git clone https://github.com/africavoid/dwl &
exec git clone https://github.com/africavoid/dots &
exec git clone https://github.com/africavoid/somebar &

# Folders
exec mkdir /home/$USER/Programs &
exec mkdir /home/$USER/Music &
exec mkdir /home/$USER/Documents &
exec mkdir /home/$USER/Pictures &
exec mkdir /home/$USER/Downloads &

# Copying dots
exec cp -r dots/.config /home/$USER/.config/ &
exec cp -r dots/.fonts /home/$USER/.fonts/ &
exec cp dots/.zshrc /home/$USER/.zshrc &
exec cp dots/waystart.sh /home/$USER/waystart.sh &
exec cp dots/bat.sh /home$USER/bat.sh &

# doas config
exec touch /etc/doas.conf &
exec echo "$DOAS" > /usr/local/etc/doas.conf &

# Since you must run as root we are changing file permissions
exec chmod 777 dwl/ &
exec chmod 777 dots/ &
exec chmod 777 somebar/ &
exec chmod 777 Programs/ &
exec chmod 777 Music/ &
exec chmod 777 Documents/ &
exec chmod 777 Pictures/ &
exec chmod 777 Downloads/ &

# Programs 
exec $PKG $PKGS & 

# oh my zsh
# run manually
 sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
 
 
