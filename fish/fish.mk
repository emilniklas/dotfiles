FISH ?= $(BIN_DIR)/fish
FISHER = fish/fisher/functions/fisher.fish

.PHONY: fish
fish: $(FISH) $(FISHER)

$(FISH): $(BREW)
	$(BREW) install fish
	ln -his "$(PWD)/fish" $(CONFIG_DIR)/fish
	touch $(FISH)

$(FISHER): $(FISH)
	fish -c 'curl -sL https://git.io/fisher | source && fisher update'
