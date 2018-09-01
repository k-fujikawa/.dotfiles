#!/usr/bin/env bash

export TMUX_POWERLINE_DIR_HOME="${HOME}/dotfiles/.tmux/tmux-powerline"

source "${TMUX_POWERLINE_DIR_HOME}/config/helpers.sh"
source "${HOME}/dotfiles/.tmux/paths.sh"
source "${TMUX_POWERLINE_DIR_HOME}/config/shell.sh"
source "${TMUX_POWERLINE_DIR_HOME}/config/defaults.sh"

source "${TMUX_POWERLINE_DIR_LIB}/arg_processing.sh"
source "${TMUX_POWERLINE_DIR_LIB}/formatting.sh"
source "${TMUX_POWERLINE_DIR_LIB}/muting.sh"
source "${TMUX_POWERLINE_DIR_LIB}/powerline.sh"
source "${TMUX_POWERLINE_DIR_LIB}/rcfile.sh"

if ! powerline_muted "$1"; then
	process_settings
	check_arg_side "$1"
	print_powerline "$1"
fi

exit 0
