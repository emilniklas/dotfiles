NEOVIM ?= $(BIN_DIR)/nvim
VIMPLUG = $(HOME)/.local/share/nvim/site/autoload/plug.vim

.PHONY: neovim
neovim: $(NEOVIM)

$(NEOVIM): $(BREW) $(RIPGREP) $(VIMPLUG)
	$(BREW) install neovim
	ln -his "$(PWD)/nvim" $(CONFIG_DIR)/nvim
	$(NEOVIM) --headless +'PlugInstall | qa'

$(VIMPLUG):
    curl -fLo "$(VIMPLUG)" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
