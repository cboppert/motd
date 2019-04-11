#!/usr/bin/env bash
source ./vim-tips.sh
source ./tmux-tips.sh

TIPS=("${VIM_TIPS[@]}" "${TMUX_TIPS[@]}")

rand=$[$RANDOM % ${#TIPS[@]}]
printf "${TIPS[$rand]}"
