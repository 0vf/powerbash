#!/usr/bin/env bash
# User config!
#
# This adds support for user-created modules and commands. It also provides variables for other modules and scripts.
__pbash_configuration_dir=$HOME/.config/powerbash
__pbash_configuration_path=$__pbash_configuration_dir/config.cfg # compatibility
__pbash_modules_userconfig_path=$__pbash_configuration_dir

[ -d "${__pbash_modules_userconfig_path}/modules" ] && for module in "${__pbash_modules_userconfig_path}/modules"/*; do [ -f "$module" ] && source "$module";__pbash_user_modules_list+=" $(basename "$module" .sh)"; done
[ -d "${__pbash_modules_userconfig_path}/commands" ] && for command in "${__pbash_modules_userconfig_path}/commands"/*; do [ -f "$command" ] && source "$command";__pbash_user_commands_list+=" $(basename "$command" .sh)"; done