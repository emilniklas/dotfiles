let mapleader = ','

call plug#begin()

Plug 'nvim-lua/plenary.nvim'

runtime gui/init.vim
runtime lsp/init.vim
runtime languages/init.vim

call plug#end()

runtime lsp/config.vim