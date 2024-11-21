#!/bin/zsh

# Toggle MacOS Light Mode
function toggleOSMode {
	osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to not dark mode'
}

function setOSDark {
	osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
}

function setOSLight {
	osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to false'
}

function toggleItermModeLight {
	echo -e "\033]50;SetProfile=SDCLight\a"
}

function toggleItermModeDark {
	echo -e "\033]50;SetProfile=SDCDark\a"
}

# Switch everything to Light (assume all dark)
function goLight {
	setOSLight
	toggleItermModeLight
}

# Switch everything to Dark
function goDark {
	setOSDark
	toggleItermModeDark
}

alias togOS=toggleOSLightMode
alias togITL=toggleItermModeLight
alias togITD=toggleItermModeDark

# Toggle - Doesn't work... Would need to find value somewhere
function switchLightMode {
	local CURRENT=$(defaults read -g AppleInterfaceStyle)

	echo $CURRENT
}
