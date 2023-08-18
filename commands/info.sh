#!/usr/bin/env bash
# pbash info
__pbash_commands_info_help='usage: pbash info

options:
 pbash info - print information about the powerbash install 
'

pbash_info() {
	printf "${__pbash_command_prefix} powerbash information:\n"
	pbash theme
	printf "${__pbash_command_prefix} installation directory: $(fc2 4)${__pbash_installation_dir}\n"
    pbash modules
	printf "${__pbash_command_prefix} version: $(fc2 4)${__pbash_current_version}\e[m\n"
	[ -d "${__pbash_installation_dir}/.git" ] || return 0
	CHECK_ONLY="true" pbash update
}