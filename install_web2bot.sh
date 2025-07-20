#!/bin/bash

set -e

# Frissítés és alap csomagok telepítése
sudo apt update
sudo apt upgrade -y
sudo apt-get install -y python3-pip mc git

# requirements.txt telepítése, ha létezik
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

# Projektek klónozása
git clone https://github.com/LordAthis/web2bot.git || echo "web2bot már létezik"
git clone https://github.com/LordAthis/f404p.git || echo "f404p már létezik"
