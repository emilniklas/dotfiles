ALACRITTY ?= $(BIN_DIR)/alacritty

.PHONY: alacritty
alacritty: $(ALACRITTY)

$(ALACRITTY): $(BREW) $(TMUX)
	$(BREW) install alacritty
	ln -his "$(PWD)/alacritty" $(CONFIG_DIR)/alacritty
