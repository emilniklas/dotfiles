GPG = $(BIN_DIR)/gpg

.PHONY: gpg
gpg: $(GPG)

$(GPG): $(BREW)
	( $(BREW) install gpg )
