#!/usr/bin/env bash

# Get powerlevel fonts: https://github.com/powerline/fonts
if cd ~/code/fonts; then git pull; else git clone https://github.com/powerline/fonts.git ~/code/fonts --depth=1; fi
~/code/fonts/install.sh
