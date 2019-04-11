#!/usr/bin/env bash
source vim-tips.sh

rand=$[$RANDOM % ${#VIM_TIPS[@]}]
printf "${VIM_TIPS[$rand]}"
