Plug 'tpope/vim-vinegar'
Plug 'nvim-telescope/telescope.nvim'

nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--hidden,--files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>