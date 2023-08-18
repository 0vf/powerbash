#!/usr/bin/env bash
__pbash_commands_update_help='usage: pbash update

options:
 pbash update - check for any updates to powerbash
environment:
 CHECK_ONLY="true"/"false" - CHECK_ONLY tells pbash update to only check for updates  
'

pbash_update() {
	printf "${__pbash_command_prefix} checking for updates...\n\e[m"
	if [[ ! -d "${__pbash_installation_dir}/.git" ]]; then printf "${__pbash_command_prefix} $(fc2 1)powerbash was not installed from a git repository, most likely installed by a package manager. cannot proceed with the upgrade\n\e[m" && return 1; fi
	cd ${__pbash_installation_dir}
	# set the path to the original git repo	
	REPO="${__pbash_installation_dir}"
	# set the branch to main
	BRANCH="main"
	# get the hash of the latest commit on the branch
	LATEST_COMMIT=$(git ls-remote --heads https://github.com/z-ffqq/powerbash.git main | awk '{ print $1 }')
	# get the hash of the most recent commit in the local repo
	CURRENT_COMMIT=$(git log --pretty=format:"%H" -n 1)
	# check if the hashes are the same
	if [[ "$LATEST_COMMIT" == "$CURRENT_COMMIT" ]]; then
		printf "${__pbash_command_prefix} up to date!\n\e[m"
		cd "$OLDPWD"
	else
		# check if the command was executed with $CHECK_ONLY or not
        	if [[ "$CHECK_ONLY" != "true" ]]; then
			[[ "${__pbash_installation_dir}" == "$HOME"* ]] || { printf "${__pbash_command_prefix} $(fc2 1)powerbash was not in installed in your home directory, aborting upgrade.\n\e[m" && cd "${OLDPWD}" && return 1; }
			printf "${__pbash_command_prefix} update available, updating...\n\e[m"
			git pull --quiet
			printf "${__pbash_command_prefix} up to date! run exec bash for the changes to apply\n\e[m"
		else
			printf "${__pbash_command_prefix} update available! run $(fc2 6)pbash update$(fc2 255) to update.\n\e[m"
        	fi
        cd "$OLDPWD"
    fi
}