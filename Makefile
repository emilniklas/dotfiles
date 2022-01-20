default: alacritty neovim git

CONFIG_DIR ?= $(HOME)/.config

BIN_DIR_x86_64 = /usr/local/bin
BIN_DIR_arm64 = /opt/homebrew/bin
BIN_DIR = $(BIN_DIR_$(shell uname -m))

$(CONFIG_DIR):
	mkdir $(CONFIG_DIR)

# Homebrew
BREW ?= $(BIN_DIR)/brew
$(BREW):
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

.PHONY: homebrew
homebrew: $(BREW)

include fish/fish.mk
include tmux/tmux.mk
include alacritty/alacritty.mk
include ripgrep/ripgrep.mk
include nvim/neovim.mk
include git/git.mk