#!/usr/bin/env bash

###############
# REGEX
# 
# Bracket Experssions
# 
# - List of characters enclosed in brackets - []
# - Matches any single character in list
# - ^ - Matches any single character not in list
# 
# E.G. - [0123456789] matches any digit
################

##############################
# Given message
#  Print empty line
#  For
##############################


print_styled_message () {
  local MSG=$1

  printf "\n$MSG\n"
}
