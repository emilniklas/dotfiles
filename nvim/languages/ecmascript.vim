call UseSpaces('*.js,*.jsx,*.ts,*.tsx', 2)

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

let g:prettier#exec_cmd_async = 1

autocmd BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx call PrettierMapping()

function! PrettierMapping()
  nnoremap <buffer> <leader>m :Prettier<cr>
  vnoremap <buffer> <leader>m :PrettierPartial<cr>
endfunction

lua << EOF
  registerLanguage {
    lsp = {
      tsserver = {}
    }
  }
EOF
