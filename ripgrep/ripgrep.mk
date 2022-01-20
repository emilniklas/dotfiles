RIPGREP ?= $(BIN_DIR)/rg

.PHONY: ripgrep
ripgrep: $(RIPGREP)

$(RIPGREP): $(BREW)
	$(BREW) install ripgrep
	ln -his "$(PWD)/ripgrep/.rgignore" $(HOME)/.rgignore
