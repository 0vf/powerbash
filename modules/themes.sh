#!/usr/bin/env bash
# Styles!
#
# The style to be used will be decided by the installer

# Unseperated Dark Style (Powerline)
__pbash_modules_list+="themes "
unseperated_powerline_dark1() {
	err=$?
	case $err in
		0) PS1="$(bc 235) $distro_logo  $(fc 247) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
		*) PS1="$(bc 235) $distro_logo  $(fc 247) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
	esac
}
unseperated_powerline_dark2() {
	err=$?
	case $err in
		0) PS1="$(bc 236) $distro_logo  $(fc 248) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
		*) PS1="$(bc 236) $distro_logo  $(fc 248) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
	esac
}
unseperated_powerline_dark3() {
	err=$?
	case $err in
		0) PS1="$(bc 237) $distro_logo  $(fc 249) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
		*) PS1="$(bc 237) $distro_logo  $(fc 249) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
	esac
}
unseperated_powerline_dark4() {
	err=$?
	case $err in
		0) PS1="$(bc 238) $distro_logo  $(fc 250) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
		*) PS1="$(bc 238) $distro_logo  $(fc 250) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
	esac
}

nologo_unseperated_powerline_dark1() {
	err=$?
	case $err in
		0) PS1="$(bc 235) \h $(fc 247) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
		*) PS1="$(bc 235) \h $(fc 247) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
	esac
}
nologo_unseperated_powerline_dark2() {
	err=$?
	case $err in
		0) PS1="$(bc 236) \h $(fc 248) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
		*) PS1="$(bc 236) \h $(fc 248) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
	esac
}
nologo_unseperated_powerline_dark3() {
	err=$?
	case $err in
		0) PS1="$(bc 237) \h $(fc 249) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
		*) PS1="$(bc 237) \h $(fc 249) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
	esac
}
nologo_unseperated_powerline_dark4() {
	err=$?
	case $err in
		0) PS1="$(bc 238) \h $(fc 250) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
		*) PS1="$(bc 238) \h $(fc 250) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
	esac
}
# Seperated Dark Style (Powerline)
seperated_powerline_dark1() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 235) $distro_logo $(bc 235)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 235) $distro_logo $(bc 236)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
	esac
}
seperated_powerline_dark2() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 236) $distro_logo $(bc 236)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 236) $distro_logo $(bc 236)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err\\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
	esac
}
seperated_powerline_dark3() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 237) $distro_logo $(bc 237)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 237) $distro_logo $(bc 237)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
	esac
}
seperated_powerline_dark4() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 238) $distro_logo $(bc 238)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 238) $distro_logo $(bc 238)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
	esac
}
nologo_seperated_powerline_dark1() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 235) \h $(bc 235)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 235) \h $(bc 235)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 235)\[\e[m\] " ;;
	esac
}
nologo_seperated_powerline_dark2() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 236) \h $(bc 236)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 236) \h $(bc 236)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err\\[\\e[0m\\]$(fc 236)\[\e[m\] " ;;
	esac
}
nologo_seperated_powerline_dark3() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 237) \h $(bc 237)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 237) \h $(bc 237)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 237)\[\e[m\] " ;;
	esac
}
nologo_seperated_powerline_dark4() {
	err=$?
	case $err in
		0) PS1="$(bc 252)$(fc 238) \h $(bc 238)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
		*) PS1="$(bc 252)$(fc 238) \h $(bc 238)$(fc 252) $(fc 2)\w$(fc 6) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 238)\[\e[m\] " ;;
	esac
}
# Colorful Style (Powerline)
colors_powerline() {
	err=$?
	case $err in
		0) PS1="$(bc 214)$(fc 235) $distro_logo $(bc 24)$(fc 214) $(fc 2)\w$(fc 220) $(__git_ps1) $(fc 34)✓ \\[\\e[0m\\]$(fc 24)\[\e[m\] " ;;
		*) PS1="$(bc 214)$(fc 235) $distro_logo $(bc 24)$(fc 214) $(fc 2)\w$(fc 220) $(__git_ps1) $(fc 1) $err \\[\\e[0m\\]$(fc 24)\[\e[m\] " ;;
	esac

}
nologo_colors_powerline() {
	err=$?
	case $err in
		0) PS1="$(bc 214)$(fc 235) \h $(bc 24)$(fc 214) $(fc 2)\w$(fc 220) $(__git_ps1u) $(fc 34)✓ \\[\\e[0m\\]$(fc 24)\[\e[m\] " ;;
		*) PS1="$(bc 214)$(fc 235) \h $(bc 24)$(fc 214) $(fc 2)\w$(fc 220) $(__git_ps1u) $(fc 1)X $err \\[\\e[0m\\]$(fc 24)\[\e[m\] " ;;
	esac
}
# Minimalist Style (Powerline)
minimalist_powerline() {
	err=$?
	case $err in
		0) PS1="$distro_logo $(fc 10)\w $(fc 3)$(__git_ps1) $(fc 10)❯\\[\\e[0m\\] " ;;
		*) PS1="$distro_logo $(fc 10)\w $(fc 3)$(__git_ps1) $(fc 1)$err $(fc 10)❯\\[\\e[0m\\] " ;;
	esac
}

nologo_minimalist_powerline() {
	err=$?
	case $err in
		0) PS1="$(fc 10)\w $(fc 3)$(__git_ps1u) $(fc 10)>\e[0m " ;;
		*) PS1="$(fc 10)\w $(fc 3)$(__git_ps1u) $(fc 1)$err $(fc 10)>\\[\\e[0m\\] " ;;
	esac
}
