#!/bin/sh

pkg update
pkg install git wget -y
git clone https://github.com/stranger2unix/exam
termux-setup-storage
echo "cd /storage/emulated/0/" >> .bashrc
