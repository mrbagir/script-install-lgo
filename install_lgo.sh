#!/bin/bash

set -e

echo "🛠️  Mulai instalasi LGO Kernel untuk Jupyter..."

# Update dan install dependencies
sudo apt update
sudo apt install -y golang git gcc python3-pip

# Setup Go path
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Tambahkan GOPATH ke ~/.bashrc jika belum
grep -q "GOPATH" ~/.bashrc || echo -e '\n# GOPATH\nexport GOPATH=$HOME/go\nexport PATH=$PATH:$GOPATH/bin' >> ~/.bashrc

# Install Jupyter
pip3 install --upgrade pip
pip3 install notebook

# Clone dan install lgo
mkdir -p ~/dev && cd ~/dev
git clone https://github.com/yunabe/lgo.git || (cd lgo && git pull)
cd lgo
go install ./cmd/lgo

# Buat direktori kerja lgo
mkdir -p ~/.lgo

# Jalankan installer kernel
./install.sh

echo -e "\n✅ LGO berhasil diinstal!"
echo "🚀 Jalankan dengan: jupyter notebook"
