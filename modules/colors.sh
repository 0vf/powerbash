#!/usr/bin/env bash
bc() {
	echo "\\[\\033[48;5;"$1"m\\]"
}

fc() {
	echo "\\[\\033[38;5;"$1"m\\]"
}

fc2() {
	echo "\e[38;5;"$1"m"
}
bc2() {
	echo "\e[48;5;"$1"m"
}