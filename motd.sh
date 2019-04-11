#!/bin/bash

arr[1]=":q[uit]n\Quit Vim and switch to emacs.\n"

rand=$[$RANDOM % ${#arr[@]}]
printf "${arr[$rand]}"
