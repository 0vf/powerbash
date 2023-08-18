#!/usr/bin/env bash
__pbash_commands_modcfg_help='usage: pbash modcfg [option] [value]

options:
 list - default action, display variables and values
 theme [value] - set theme
 remove [variable] - remove config variable
 [variable] [value] - modify or add config variable
'

pbash_modcfg() {
	pbash_modcfg_list() {
		printf "${__pbash_command_prefix} Config variables and values:\n"
		pbash theme && printf "\n"
		grep "__pbash_" "$__pbash_configuration_path" | while IFS='=' read -r name value; do
			name=$(printf "%s\n" "$name" | sed 's/__pbash_//')
			printf "${__pbash_command_prefix} $name: $(fc2 4)$value\n\e[m"
		done
	}
	if [ -f "$__pbash_configuration_path" ]; then
		if [ -z "$1" ]; then
			pbash_modcfg_list
		elif [ "$1" = "list" ]; then
			pbash_modcfg_list
		elif [ "$1" = "theme" ]; then
			sed -i '' "s/PROMPT_COMMAND=\"[^\"]*\"/PROMPT_COMMAND=\"$2\"/" "$__pbash_configuration_path"
			printf "${__pbash_command_prefix} PROMPT_COMMAND changed to $2 successfully.\e[m\n"
		elif [ "$1" = "remove" ]; then
			sed -i '' "s/__pbash_$2=\"[^\"]*\"//" "$__pbash_configuration_path"
			printf "${__pbash_command_prefix} config value $2 removed from the config file.\e[m\n"
		elif grep -q "$__pbash_$1=" "$__pbash_configuration_path"; then
			sed -i '' "s/__pbash_$1=\"[^\"]*\"/__pbash_$1=\"$2\"/" "$__pbash_configuration_path"
			printf "${__pbash_command_prefix} config file modified successfully.\e[m\n"
		else
			echo "__pbash_$1=\"$2\"" >> "$__pbash_configuration_path"
			printf "${__pbash_command_prefix} config value $1 added to the config file.\e[m\n"
		fi
	else
		printf "${__pbash_command_prefix} config file not found.\e[m\n"
	fi
}