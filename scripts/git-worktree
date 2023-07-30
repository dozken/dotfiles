#!/usr/bin/env bash

# Define a new function that overloads 'git worktree add'
git() {
	if [ "$1" = "worktree" ] && [ "$2" = "add" ]; then
		command git worktree add "$3"

		# Check if .npmrc exists and copy it to the new worktree directory
		if [ -f .npmrc ]; then
			ln -sv .npmrc "$3/.npmrc"
		fi

		# Check if .env exists and copy it to the new worktree directory
		if [ -f .env ]; then
			ln .env "$3/.env"
		fi

		cd "$3"
		echo "Now in new worktree for branch $3"
	else
		command git "$@"
	fi
}
