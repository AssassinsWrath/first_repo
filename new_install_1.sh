#!/bin/sh

# Thanks to Kev Quirk for the script which I have modified from https://kevq.uk/how-to-create-a-simple-install-script-in-ubuntu/.
 
# Add additional repositories
#apt-add-repository ppa:tista/adapta # Adapta theme repo
#add-apt-repository ppa:papirus/papirus # Papirus icon theme repo
#add-apt-repository ppa:agornostal/ulauncher # Ulauncher repo
#add-apt-repository ppa:wereturtle/ppa # Ghostwriter repo
 
# Get the latest package lists
apt update
 
# Get DEB files
#wget https://prerelease.keybase.io/keybase_amd64.deb
#wget https://atom.io/download/deb/atom-amd64.deb
#wget https://launcher.mojang.com/download/Minecraft.deb
 
# Install from Repo
#apt-get install adapta-gtk-theme -y
#apt-get install papirus-icon-theme -y
#apt install gnome-tweak-tool -y
#apt-get install ulauncher -y
#apt-get install filezilla -y
#apt-get install inkscape -y
#apt-get install calibre -y
#apt-get install torbrowser-launcher -y
#apt-get install ghostwriter -y
#apt-get install hunspell-en-gb -y # Adds spellcheck to Ghostwriter
#apt-get install gimp -y
#apt-get install plank -y
apt install neofetch
apt install fonts-powerline
apt install htop
apt install lutris
apt install steam-installer
apt install steam-devices
apt install remmina

# Setup fancy command prompt
wget https://raw.githubusercontent.com/AssassinsWrath/first_repo/master/fancy-bash-prompt.sh
mv fancy-bash-promt.sh .fancy-bash-promt.sh
echo "source ~/.fancy-bash-promt.sh" >> ~/.bashrc
echo "neofetch" >> ~/.bashrc

# Install snap packages
#snap install spotify
#snap install gitkraken
 
# Install DEB files
#dpkg -i keybase_amd64.deb
#dpkg -i atom-amd64.deb
#dpkg -i Minecraft.deb
#apt --fix-broken install -y # Fix Minecraft dependency issue.
 
# Clean up DEB files
#rm -f keybase_amd64.deb
#rm -f Minecraft.deb
#rm -f atom-amd64.deb
 
# Install requirements for Ulauncher PW generator
#apt install python3-pip -y
#pip3 install pwgen
 
# Final message
echo All application have been installed, the script will now quit.
 
# Exit the script
exit 0
