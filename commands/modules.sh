#!/usr/bin/env bash
pbash_modules() {
	printf "${__pbash_command_prefix} modules: $(fc2 4)${__pbash_modules_list}\n\e[m"
}