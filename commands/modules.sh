#!/usr/bin/env bash
__pbash_commands_modules_help='usage: pbash modules

options:
 all - default action, list loaded (user & core) powerbash modules
 user - list loaded user powerbash modules
 core - list loaded core powerbash modules
'

pbash_modules() {
	case $1 in
		core) printf "${__pbash_command_prefix} core modules:$(fc2 4)${__pbash_core_modules_list}\n\e[m";;
		user) printf "${__pbash_command_prefix} user modules:$(fc2 4)${__pbash_user_modules_list}\n\e[m";;
		* | all) printf "${__pbash_command_prefix} modules:$(fc2 4)${__pbash_core_modules_list}${__pbash_user_modules_list}\n\e[m";;
	esac
}