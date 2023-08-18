#!/usr/bin/env bash
# Installer
__pbash_commands_cfg_help='usage: pbash cfg

options:
 pbash cfg - launches configuration wizard 
'

pbash_cfg() {
	pbash makecfg
	fc() {
		echo "\e[38;5;"$1"m"
	}
	bc() {
		echo "\e[48;5;"$1"m"
	}
	exit_cleanup() {
		clear
		echo "Run 'exec bash' to apply changes"
		bc() {
			echo "\\[\\033[48;5;"$1"m\\]"
		}

		fc() {
			echo "\\[\\033[38;5;"$1"m\\]"
		}	
	}
	config_git_2() {
		clear
		printf "Would you like for extra git information to be shown to you as well? (eg. unstaged files, staged files, commits)\n\n"
		printf "WARNING: May have a performance impact to the prompt in large projects!"
		printf "\n"
		case "$no_nerd_fonts" in
			"true") printf "$(bc 235) $HOSTNAME  $(fc 247) $(fc 2)~/foo$(fc 6) * master ?1 +2 ^1 $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n" ;;
			*) printf "$(bc 235) $distro_logo  $(fc 247) $(fc 2)~/foo$(fc 6)  master ?1 +2 ^1 $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n" ;;
		esac
		printf "\n\n"
		printf "[1] Yes\n"
		printf "[2] No\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) pbash modcfg show_extra_git_info true;exit_cleanup;;
			2) pbash modcfg show_extra_git_info false;exit_cleanup;;
			*) config_git_2;;
		esac
	}
	config_git() {
		clear
		printf "Would you like for git information to be shown to you?"
		printf "\n\n"
		case "$no_nerd_fonts" in
			"true") printf "$(bc 235) $HOSTNAME  $(fc 247) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n" ;;
			*) printf "$(bc 235) $distro_logo  $(fc 247) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n" ;;
		esac
		printf "\n\n"
		printf "[1] Yes\n"
		printf "[2] No\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) pbash modcfg show_git_info true;config_git_2;;
			2) pbash modcfg show_git_info false;exit_cleanup;;
			*) config_git;;
		esac
	}
	config_with_nerd_fonts() {
		clear
		printf "Would you like for icons to be present in your shell? (as shown below)\n\n"
		printf "$(bc 235) $distro_logo  $(fc 247) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[1] Yes\n"
		printf "[2] No\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) config_with_nerd_fonts_2;;
			2) config_without_nerd_fonts;;
			*) config_with_nerd_fonts;;
		esac
	}
	config_with_nerd_fonts_2() {
		clear
		printf "Pick a theme [1-4]\n\n"
		printf "[1] Powerline Unseperated Colors -\n"
		printf "$(bc 235) $distro_logo  $(fc 247) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[2] Powerline Seperated Colors -\n"
		printf "$(bc 252)$(fc 235) $distro_logo $(bc 235)$(fc 252) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[3] Powerline Colorful -\n"
		printf "$(bc 214)$(fc 235) $distro_logo $(bc 24)$(fc 214) $(fc 2)~/foo$(fc 220)  master $(fc 34)✓ \e[0m$(fc 24)\e[m\n\n"
		printf "[4] Powerline Minimalist -\n"
		printf "$distro_logo $(fc 10)~/foo $(fc 3) master $(fc 10)❯\e[0m\n\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) contrast_unseperated_logo;;
			2) contrast_seperated_logo;;
			3) pbash modcfg theme 'colors_powerline';config_git;;
			4) pbash modcfg theme 'minimalist_powerline';config_git;;
			*) config_with_nerd_fonts_2;;
		esac
	}
	contrast_unseperated_logo() {
		clear
		printf "Pick your contrast [1-4]\n\n"
		printf "[1] Darkest -\n"
		printf "$(bc 235) $distro_logo  $(fc 247) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[2] Darker -\n"
		printf "$(bc 236) $distro_logo  $(fc 248) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 236)\e[m\n\n"
		printf "[3] Dark -\n"
		printf "$(bc 237) $distro_logo  $(fc 249) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 237)\e[m\n\n"
		printf "[4] Light -\n"
		printf "$(bc 238) $distro_logo  $(fc 250) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 238)\e[m\n\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) pbash modcfg theme 'unseperated_powerline_dark1';config_git;;
			2) pbash modcfg theme 'unseperated_powerline_dark2';config_git;;
			3) pbash modcfg theme 'unseperated_powerline_dark3';config_git;;
			4) pbash modcfg theme 'unseperated_powerline_dark4';config_git;;
			*) contrast_unseperated_logo;;
		esac
	}
	contrast_seperated_logo() {
		clear
		printf "Pick your contrast [1-4]\n\n"
		printf "[1] Darkest -\n"	
		printf "$(bc 252)$(fc 235) $distro_logo $(bc 235)$(fc 252) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[2] Darker -\n"	
		printf "$(bc 252)$(fc 236) $distro_logo $(bc 236)$(fc 252) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 236)\e[m\n\n"
		printf "[3] Dark -\n"	
		printf "$(bc 252)$(fc 237) $distro_logo $(bc 237)$(fc 252) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 237)\e[m\n\n"
		printf "[4] Light -\n"	
		printf "$(bc 252)$(fc 238) $distro_logo $(bc 238)$(fc 252) $(fc 2)~/foo$(fc 6)  master $(fc 34)✓ \e[0m$(fc 238)\e[m\n\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) pbash modcfg theme 'seperated_powerline_dark1';config_git;;
			2) pbash modcfg theme 'seperated_powerline_dark2';config_git;;
			3) pbash modcfg theme 'seperated_powerline_dark3';config_git;;
			4) pbash modcfg theme 'seperated_powerline_dark4';config_git;;
			*) contrast_seperated_logo;;
		esac
	}
# -------------------- #
	config_without_nerd_fonts() {
		clear
		no_nerd_fonts="true"
		printf "Pick a theme [1-4]\n\n"
		printf "[1] Powerline Unseperated Colors -\n"
		printf "$(bc 235) $HOSTNAME  $(fc 247) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[2] Powerline Seperated Colors -\n"
		printf "$(bc 252)$(fc 235) $HOSTNAME $(bc 235)$(fc 252) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[3] Powerline Colorful -\n"
		printf "$(bc 214)$(fc 235) $HOSTNAME $(bc 24)$(fc 214) $(fc 2)~/foo$(fc 220) * master $(fc 34)✓ \e[0m$(fc 24)\e[m\n\n"
		printf "[4] Powerline Minimalist -\n"
		printf "$(fc 10)~/foo $(fc 3)* master $(fc 10)>\e[0m\n\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) contrast_unseperated_nologo;;
			2) contrast_seperated_nologo;;
			3) pbash modcfg theme 'nologo_colors_powerline';config_git;;
			4) pbash modcfg theme 'nologo_minimalist_powerline';config_git;;
			*) config_without_nerd_fonts;;
		esac
	}
	contrast_unseperated_nologo() {
		clear
		printf "Pick your contrast [1-4]\n\n"
		printf "[1] Darkest -\n"
		printf "$(bc 235) $HOSTNAME  $(fc 247) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[2] Darker -\n"
		printf "$(bc 236) $HOSTNAME  $(fc 248) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 236)\e[m\n\n"
		printf "[3] Dark -\n"
		printf "$(bc 237) $HOSTNAME  $(fc 249) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 237)\e[m\n\n"
		printf "[4] Light -\n"
		printf "$(bc 238) $HOSTNAME  $(fc 250) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 238)\e[m\n\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) pbash modcfg theme 'nologo_unseperated_powerline_dark1';config_git;;
			2) pbash modcfg theme 'nologo_unseperated_powerline_dark2';config_git;;
			3) pbash modcfg theme 'nologo_unseperated_powerline_dark3';config_git;;
			4) pbash modcfg theme 'nologo_unseperated_powerline_dark4';config_git;;
			*) contrast_unseperated_nologo;;
		esac
	}
	contrast_seperated_nologo() {
		clear
		printf "Pick your contrast [1-4]\n\n"
		printf "[1] Darkest -\n"	
		printf "$(bc 252)$(fc 235) $HOSTNAME $(bc 235)$(fc 252) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 235)\e[m\n\n"
		printf "[2] Darker -\n"	
		printf "$(bc 252)$(fc 236) $HOSTNAME $(bc 236)$(fc 252) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 236)\e[m\n\n"
		printf "[3] Dark -\n"	
		printf "$(bc 252)$(fc 237) $HOSTNAME $(bc 237)$(fc 252) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 237)\e[m\n\n"
		printf "[4] Light -\n"	
		printf "$(bc 252)$(fc 238) $HOSTNAME $(bc 238)$(fc 252) $(fc 2)~/foo$(fc 6) * master $(fc 34)✓ \e[0m$(fc 238)\e[m\n\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) pbash modcfg theme 'nologo_seperated_powerline_dark1';config_git;;
			2) pbash modcfg theme 'nologo_seperated_powerline_dark2';config_git;;
			3) pbash modcfg theme 'nologo_seperated_powerline_dark3';config_git;;
			4) pbash modcfg theme 'nologo_seperated_powerline_dark4';config_git;;
			*) contrast_seperated_nologo;;
		esac
	}

	clear
	printf "Welcome to the powerbash configuration wizard!\n"
	printf "This wizard will help you configure your powerbash installation\n"
	printf "\n\n\n\n"
	read -nrs1 -p "Press any key to continue."
	tuxtest() {
		clear
		printf "\n\n\n"
		printf "Is a tux icon visible above?\n"
		printf "[1] Yes\n"
		printf "[2] No\n"
		read -r -p "Type one of the numbers shown above: " REPLY
		case "$REPLY" in
			1) config_with_nerd_fonts;;
			2) config_without_nerd_fonts;;
			*) tuxtest;;
		esac
	}
	tuxtest
}