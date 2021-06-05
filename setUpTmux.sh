#!/bin/sh

pkg update
pkg install git wget -y
cd
git clone https://github.com/stranger2unix/exam /storage/emulated/0/exam
termux-setup-storage
wget https://gist.githubusercontent.com/marioBonales/1637696/raw/93a33aa5f1893f46773483250214f8b8b496a270/.bashrc
echo "cd /storage/emulated/0/" >> .bashrc
