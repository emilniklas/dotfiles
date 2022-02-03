NEOMUTT = $(BIN_DIR)/neomutt

.PHONY: neomutt
neomutt: $(NEOMUTT)

$(NEOMUTT): $(BREW) $(CONFIG_DIR) $(GPG)
	( $(BREW) install neomutt )
	ln -his "$(PWD)/neomutt" $(CONFIG_DIR)/neomutt
