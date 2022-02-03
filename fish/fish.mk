FISH ?= $(BIN_DIR)/fish
FISHER = fish/fisher/functions/fisher.fish

.PHONY: fish
fish: $(FISH)

$(FISH): $(BREW) $(FISHER)
	$(BREW) install fish
	ln -his "$(PWD)/fish" $(CONFIG_DIR)/fish
	touch $(FISH)

$(FISHER):
	fish -c 'curl -sL https://git.io/fisher | source && fisher update'
