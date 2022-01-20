TMUX = $(BIN_DIR)/tmux
$(TMUX): $(BREW) $(FISH)
	( $(BREW) install tmux )
	ln -his "$(PWD)/tmux/tmux.conf" $(HOME)/.tmux.conf

.PHONY: tmux
tmux: $(TMUX)