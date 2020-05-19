#!/bin/sh

# Symlink for config files
mv ~/.config ~/.configOLD
ln -s ~/Nextcloud/Config/ ~/.config

# Symlink .minecraft folder so previous save works.
ln -s ~/Nextcloud/Minecraft ~/.minecraft

# Setup other Symlinks
rm -rf ~/Documents
rm -rf ~/Pictures
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
ln -s ~/Nextcloud/Documents ~/Documents
ln -s ~/Nextcloud/Photos ~/Pictures

# Setup terminal alias
alias update='sudo apt update'
alias upgrade='sudo apt upgrade -y'

# Final message
echo User folders have been configured, the script will now quit.
 
# Exit the script
exit 0
