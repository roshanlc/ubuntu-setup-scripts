#!/bin/sh
# Install curl and necessary packages to setup ppa
sudo apt install curl apt-transport-https gnupg2 -y

# VSCODIUM PPA
wget -O- https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscodium.gpg
echo deb [signed-by=/usr/share/keyrings/vscodium.gpg] https://download.vscodium.com/debs vscodium main | sudo tee /etc/apt/sources.list.d/vscodium.list

# ALACRITTY PPA
sudo add-apt-repository ppa:aslatter/ppa
sudo apt install apt-transport-https curl

# BRAVE BROWSER PPA
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Go language ppa for latest release
sudo add-apt-repository ppa:longsleep/golang-backports

# For kernel manager app(ukku)
sudo add-apt-repository ppa:cappelikan/ppa

# Update apt list
sudo apt update -y 
