#!/usr/bin/env bash

# ----------------------------------------------------------------------
# Setup config variables and env
# ----------------------------------------------------------------------

# Allow users to optionally configure their sway theme path and set the
# value if one doesn't exist. This runs each time a script is switched
# so it's important to check for previously set values.

if [ -z "$BASE16_SHELL_SWAYCONF_PATH" ]; then
	BASE16_SHELL_SWAYCONF_PATH="$BASE16_CONFIG_PATH/sway.base16.conf"
fi

if [ -z "$BASE16_SWAY_THEME_PATH" ]; then
	BASE16_SWAY_THEME_PATH="$HOME/.config/base16-sway/themes"
fi

# If base16-sway path directory doesn't exist, stop hook
if [ ! -d $BASE16_SWAY_THEME_PATH ]; then
	return 2
fi

# ----------------------------------------------------------------------
# Execution
# ----------------------------------------------------------------------

# If base16-sway is used, provide a file for base16-sway to source
if [ -d "$BASE16_SWAY_THEME_PATH" ]; then
	# Set current theme name
	read current_theme_name <"$BASE16_SHELL_THEME_NAME_PATH"

	ln -sf "$BASE16_SWAY_THEME_PATH/base16-$current_theme_name.config" "$BASE16_SHELL_SWAYCONF_PATH"
fi
