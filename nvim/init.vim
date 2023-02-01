let mapleader = ','

call plug#begin()

Plug 'christoomey/vim-tmux-navigator'

Plug 'nvim-lua/plenary.nvim'

runtime editing.vim
runtime gui/init.vim
runtime lsp/init.vim
runtime languages/init.vim

call plug#end()

runtime lsp/config.vim
runtime gui/config.vim
