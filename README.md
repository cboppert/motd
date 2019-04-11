# Message of the Day

A script to display a new random tmux or vim tip at each terminal login

## Install
To use this simply append

    if [ -e $HOME/workspace/motd/motd.sh ]
    then
        bash $HOME/workspace/motd/motd.sh
    fi

to your .bashrc or .zshrc (or other shell configuration file which is executed on terminal login).
New terminals will display a message with a ViM or TMUX tip. Replace $HOME/workspace/motd with the path
to the motd.sh file if needed.

Make sure the script is set to executable!

    chmod +x motd.sh

## ViM
Cheatsheet from - https://www.fprintf.net/vimCheatSheet.html

## Tmux
Cheatsheet from - https://tmuxcheatsheet.com/
