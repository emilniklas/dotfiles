HX ?= $(BIN_DIR)/hx

.PHONY: helix
helix: $(HX)

$(HX): $(BREW)
	$(BREW) install helix
	ln -his "$(PWD)/helix" $(CONFIG_DIR)/helix
