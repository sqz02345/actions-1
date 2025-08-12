#!/usr/bin/env bash
set -euo pipefail

echo "hello world"
ls -altr

sudo apt-get update
sudo apt-get install -y cowsay

cowsay -f dragon "Run for cover, I am a DRAGON....RAWR" | tee dragon.txt
grep -i "dragon" dragon.txt

ls -altr
