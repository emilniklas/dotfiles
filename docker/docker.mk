DOCKER = $(BIN_DIR)/docker

.PHONY: docker
docker: $(DOCKER)

$(DOCKER): $(BREW)
	( $(BREW) install homebrew/cask/docker )
