#!/usr/bin/env bash

source $(dirname $0)/vim-tips.sh
source $(dirname $0)/tmux-tips.sh

TIPS=("${VIM_TIPS[@]}" "${TMUX_TIPS[@]}")

rand=$[$RANDOM % ${#TIPS[@]}]
printf "${TIPS[$rand]}"
