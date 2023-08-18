#!/usr/bin/env bash
__pbash_commands_modules_help='usage: pbash modules

options:
 pbash modules - list loaded powerbash modules
'

pbash_modules() {
	printf "${__pbash_command_prefix} modules:$(fc2 4)${__pbash_modules_list}\n\e[m"
}