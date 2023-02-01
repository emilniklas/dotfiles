Plug 'tpope/vim-vinegar'

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>
endfunction

Plug 'nvim-telescope/telescope.nvim'

nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--hidden,--files cwd_only=true hidden=true<cr>
nnoremap <leader>fr <cmd>Telescope oldfiles find_command=rg,--hidden,--files cwd_only=true hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep find_command=rg,--hidden,--files,.,.* cwd_only=true hidden=true<cr>
