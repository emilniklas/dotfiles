setopt promptsubst

# Colors

color_magenta=$(tput setaf 5)
color_orange=$(tput setaf 3)
color_green=$(tput setaf 2)
color_blue=$(tput setaf 4)
color_purple=$(tput setaf 5)
color_white=$(tput setaf 7)
color_red=$(tput setaf 1)
color_bold=$(tput bold)
color_reset=$(tput sgr0)


# Location

default_username=emilpersson

user_color=$color_green
at_color=$color_blue
location_color=$color_red

function prompt_location() {

	prompt_location_return=""

	# Location prompt

	prompt_location_return+=$user_color$USER
	prompt_location_return+=$at_color"@"
	prompt_location_return+=$location_color$(hostname)
	prompt_location_return+=" "

	prompt_location_return+=$color_reset

	if [[ $USER != $default_username ]]; then

		echo $prompt_location_return
	fi
}


# Directory

directory_color=$color_blue

function prompt_directory() {

	prompt_directory_return=""

	prompt_directory_return+=$directory_color
	prompt_directory_return+="${PWD/$HOME/~}"

	prompt_directory_return+=$color_reset

	echo $prompt_directory_return
}


# Git

on_color=$color_reset
branch_color=$color_red
star_color=$color_blue

function prompt_git() {

	git rev-parse --is-inside-work-tree &>/dev/null || return

	branch=$(git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||')

	dirty=$(git diff --quiet --ignore-submodules HEAD &>/dev/null; [ $? -eq 1 ]&& echo -e "*")

	prompt_git_return=""

	prompt_git_return+=$on_color" on "

	prompt_git_return+=$branch_color$branch

	prompt_git_return+=$star_color$dirty

	prompt_git_return+=$color_reset

	echo $prompt_git_return
}

newline_color=$color_green
function prompt_newline() {

	newline_return="
%# "

	echo $newline_return
}

# Prompt
# root@computer ~ on master*

prompt_variables='$(prompt_location)$(prompt_directory)$(prompt_git)$(prompt_newline)'
PROMPT="${prompt_variables}"
