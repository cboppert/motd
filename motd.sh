#!/usr/bin/env bash

source $(dirname $0)/vim-tips.sh
source $(dirname $0)/regex-tips.sh
source $(dirname $0)/styler.sh


TIPS=("${VIM_TIPS[@]}" "${REGEX_TIPS[@]}")
# TIPS=("${REGEX_TIPS[@]}")

RAND=$[$RANDOM % ${#TIPS[@]}]
print_styled_message "${TIPS[$RAND + 1]}"
