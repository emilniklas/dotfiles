TMUX = $(BIN_DIR)/tmux
TMUX_CONFIG_DIR = $(CONFIG_DIR)/tmux

.PHONY: tmux
tmux: $(TMUX)

$(TMUX): $(BREW) $(CONFIG_DIR) $(FISH) $(GIT)
	( $(BREW) install tmux )
	ln -his "$(PWD)/tmux/main.tmux" $(HOME)/.tmux.conf
	ln -his "$(PWD)/tmux" $(TMUX_CONFIG_DIR)
	$(GIT) clone https://github.com/tmux-plugins/tpm $(TMUX_CONFIG_DIR)/plugins/tpm
