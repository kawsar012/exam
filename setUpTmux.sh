#!/bin/sh

termux-setup-storage
pkg update
pkg install git wget -y
cd
git clone https://github.com/stranger2unix/exam /storage/emulated/0/exam
cp /storage/emulated/0/exam/.bashrc ~/
