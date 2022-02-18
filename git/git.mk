GIT ?= $(BIN_DIR)/git

.PHONY: git
git: $(GIT)

$(GIT): $(BREW) $(GPG)
	$(BREW) install git
	ln -his "$(PWD)/git" $(CONFIG_DIR)/git
