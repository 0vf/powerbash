#!/usr/bin/env bash
__pbash_commands_modcfg_help='usage: pbash modcfg [option] [value]

options:
 list - default action, display variables and set values
 set - display all set and configurable powerbash variables and values
 theme [value] - set theme
 remove [variable] - remove config variable
 [variable] [value] - modify or add config variable
'

pbash_modcfg() {
	[ ! -f "$__pbash_configuration_dir/config.cfg" ] && { printf "${__pbash_command_prefix} config file not found.\e[m\n"; return 1; }

	case $1 in
		'' | list)
			printf "${__pbash_command_prefix} Config variables and values:\n"
			pbash theme && printf "\n"
			grep "__pbash_" "$__pbash_configuration_dir/config.cfg" | while IFS='=' read -r name value; do
				name=$(printf "%s\n" "$name" | sed 's/__pbash_//')
				printf "${__pbash_command_prefix} $name: $(fc2 4)$value\n\e[m"
			done;;
		set)
			printf "${__pbash_command_prefix} List of set variables:\n\e[m"
			pbash theme && printf "\n"
			for var in "${!__pbash_@}"; do [[ $var == __pbash_* && $var != __pbash_commands* && $var != __pbash_modules_list && $var != __pbash_installation_dir* && $var != __pbash_current_version && $var != __pbash_core_commands_list && $var != __pbash_user_commands_list && $var != __pbash_core_modules_list && $var != __pbash_user_modules_list  ]] && printf "${__pbash_command_prefix} $var: $(fc2 4)\"%s\"\n\e[m" "${!var}" | sed 's/__pbash_//'; done;;
		theme)
			sed -i.old "s/PROMPT_COMMAND=\"[^\"]*\"/PROMPT_COMMAND=\"$2\"/" "$__pbash_configuration_dir/config.cfg"
			printf "${__pbash_command_prefix} PROMPT_COMMAND changed to $2 successfully.\e[m\n";;
		remove)
			sed -i.old "s/__pbash_$2=\"[^\"]*\"//" "$__pbash_configuration_dir/config.cfg"
			printf "${__pbash_command_prefix} config value $2 removed from the config file.\e[m\n";;
		*)
			if grep -q "$__pbash_$1=" "$__pbash_configuration_dir/config.cfg"; then
				sed -i.old "s/__pbash_$1=\"[^\"]*\"/__pbash_$1=\"$2\"/" "$__pbash_configuration_dir/config.cfg"
				printf "${__pbash_command_prefix} config file modified successfully.\e[m\n"
			else
				echo "__pbash_$1=\"$2\"" >> "$__pbash_configuration_dir/config.cfg"
				printf "${__pbash_command_prefix} config value $1 added to the config file.\e[m\n"
			fi;;
	esac
}