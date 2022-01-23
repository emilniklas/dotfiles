TMUX = $(BIN_DIR)/tmux

.PHONY: tmux
tmux: $(TMUX)

$(TMUX): $(BREW) $(CONFIG_DIR) $(FISH)
	( $(BREW) install tmux )
	ln -his "$(PWD)/tmux/main.tmux" $(HOME)/.tmux.conf
	ln -his "$(PWD)/tmux" $(CONFIG_DIR)/tmux
