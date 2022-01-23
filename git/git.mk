GIT ?= $(BIN_DIR)/git

.PHONY: git
git: $(GIT)

$(GIT): $(BREW) $(GPG)
	$(BREW) install git
	ln -his "$(PWD)/git/.gitconfig" $(HOME)
	ln -his "$(PWD)/git/.gitignore_global" $(HOME)
