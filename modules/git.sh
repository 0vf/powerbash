#!/usr/bin/env bash
__git_ps1() {
	if [[ "$__pbash_show_git_info" != "false" ]]; then
		branch=$(git branch 2>/dev/null | sed 's/*//g')
		if [[ "$__pbash_show_extra_git_info" != "false" ]]; then
			unstagedfiles=$(git status --porcelain 2>/dev/null | grep -c '^??')
			stagedfiles=$(git status --short 2>/dev/null | grep '^A' | wc -l | tr -d ' ')
			unpushedcommits=$(git log --branches --not --remotes 2>/dev/null | grep "^commit" | wc -l | tr -d ' ')
		fi
			prompt=""

		if [[ "$branch" != "" ]]; then
			prompt+="$branch"
		fi
		
		if [[ "__$pbash_show_extra_git_info" != "false" ]]; then
			if [[ "$unstagedfiles" -ne "0" ]]; then
				prompt+=" ?$unstagedfiles"
			fi

			if [[ "$stagedfiles" -ne "0" ]]; then
				prompt+=" +$stagedfiles"
			fi

			if [[ "$unpushedcommits" -ne "0" ]]; then
				prompt+=" ^$unpushedcommits"
			fi
		fi
	fi

    printf "%s" "${prompt}"
}

__git_ps1u() {
	if [[ "$__pbash_show_git_info" != "false" ]]; then
		branch=$(git branch 2>/dev/null)
		if [[ "$__pbash_show_extra_git_info" != "false" ]]; then
			unstagedfiles=$(git status --porcelain 2>/dev/null | grep -c '^??')
			stagedfiles=$(git status --short 2>/dev/null | grep '^A' | wc -l | tr -d ' ')
			unpushedcommits=$(git log --branches --not --remotes 2>/dev/null | grep "^commit" | wc -l | tr -d ' ')
		fi
			prompt=""

		if [[ "$branch" != "" ]]; then
			prompt+="$branch"
		fi
		
		if [[ "$__pbash_show_extra_git_info" != "false" ]]; then
			if [[ "$unstagedfiles" -ne "0" ]]; then
				prompt+=" ?$unstagedfiles"
			fi

			if [[ "$stagedfiles" -ne "0" ]]; then
				prompt+=" +$stagedfiles"
			fi

			if [[ "$unpushedcommits" -ne "0" ]]; then
				prompt+=" ^$unpushedcommits"
			fi
		fi
	fi

    printf "%s" "${prompt}"
}