runtime lsp/completion.lua

call luaeval('finalizeLanguages()')

imap <C-Y> <cmd> lua vim.lsp.buf.code_action()<cr>
imap <C-Space> <cmd> lua vim.lsp.buf.completion()<cr>
nmap <Leader>m <cmd> lua vim.lsp.buf.formatting()<cr>
vmap <Leader>m <cmd> lua vim.lsp.buf.range_formatting()<cr>
nmap <Leader>j <cmd> lua vim.lsp.buf.definition()<cr>
nmap <Leader>k <cmd> lua vim.lsp.buf.references()<cr>
