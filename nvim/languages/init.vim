function! s:UseTabs(size)
  set tabstop=a:size shiftwidth=a:size noexpandtab
endfunction

function! s:UseSpaces(size)
  set tabstop=a:size shiftwidth=a:size expandtab
endfunction

function! UseTabs(pattern, size)
  execute 'autocmd BufNewFile,BufRead ' . a:pattern . ' :set tabstop=' . a:size . ' shiftwidth=' . a:size . ' noexpandtab'
endfunction

function! UseSpaces(pattern, size)
  execute 'autocmd BufNewFile,BufRead ' . a:pattern . ' :set tabstop=' . a:size . ' shiftwidth=' . a:size . ' expandtab'
endfunction

call UseSpaces('*', 2)

runtime languages/ecmascript.vim
runtime languages/rust.lua
runtime languages/go.lua
runtime languages/make.lua
runtime languages/capnp.vim
runtime languages/terraform.lua
runtime languages/motoko.lua
