#!/bin/bash

echo "Beginning setup of your Cloud 9 Workspace"

echo ""
echo "Cloning Projects - RPS, 2048, RPS.ai, Hog"
sudo git clone 'https://github.com/kmishra9/RPS.git'
sudo git clone 'https://github.com/kmishra9/2048-Starter.git'
sudo git clone 'https://github.com/kmishra9/AI-Extensions.git'
sudo git clone 'https://github.com/kmishra9/Hog.git'


echo ""
echo "Installing pip, Python3's package manager"
sudo easy_install3 pip

echo ""
echo "Installing getch"
sudo python3 -m pip install getch

echo ""
echo "Installing termcolor"
sudo python3 -m pip install termcolor

echo ""
echo "Installing OK and related packages"
python3 -m pip install virtualenv
python3 -m pip install ok

echo ""
echo "No __pycache__ allowed"
export PYTHONDONTWRITEBYTECODE="Don't allow"


echo ""
echo "Install C9 Desktop related packages"
sudo pip3 install npm
sudo apt-get install websockify
sudo chown -R ubuntu *
c9 install c9.ide.desktop --force
