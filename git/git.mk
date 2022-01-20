GIT ?= $(BIN_DIR)/git

.PHONY: git
git: $(GIT)

$(GIT): $(BREW)
	$(BREW) install git
	ln -his "$(PWD)/git/.gitconfig" $(HOME)
	ln -his "$(PWD)/git/.gitignore_global" $(HOME)
