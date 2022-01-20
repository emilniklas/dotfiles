FISH ?= $(BIN_DIR)/fish

.PHONY: fish
fish: $(FISH)

$(FISH): $(BREW)
	$(BREW) install fish
	ln -his "$(PWD)/fish" $(CONFIG_DIR)/fish
