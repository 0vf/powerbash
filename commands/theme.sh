#!/usr/bin/env bash
__pbash_commands_theme_help='usage: pbash theme

options:
 pbash theme - prints currently loaded theme 
'

pbash_theme() {
	printf "${__pbash_command_prefix} theme: $(fc2 4)$PROMPT_COMMAND\n\e[m"
}