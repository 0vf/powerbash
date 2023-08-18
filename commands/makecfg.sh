#!/usr/bin/env bash
__pbash_configuration_path=$HOME/.config/powerbash/config.cfg
__pbash_commands_makecfg_help='usage: pbash makecfg

options:
 pbash makecfg - generate a powerbash configuration file
'

pbash_makecfg() {
	[ -f $__pbash_configuration_path ] && printf "${__pbash_command_prefix} $(fc2 1)powerbash configuration already initialized\e[m\n" && return 1
	mkdir -p ~/.config/powerbash
	touch $__pbash_configuration_path
	printf "${__pbash_command_prefix} initializing configuration\e[m\n"
	printf "%s\n" '#!/usr/bin/env bash
# powerbash configuration file
# theme
PROMPT_COMMAND=""

# git configuration values
__pbash_show_git_info="true"
__pbash_show_extra_git_info="true"

# shell configuration values
__pbash_shorten_directory="true"' > $__pbash_configuration_path || return 1
	printf "${__pbash_command_prefix} configuration initialized at $__pbash_configuration_path\e[m\n"
}