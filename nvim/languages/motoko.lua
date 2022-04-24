vim.fn.UseSpaces("*.mo", 2)

registerLanguage {
  define_lsp = true;
  lsp = {
    dfx = {
       cmd = {'/usr/local/bin/dfx', '_language-service'};
       filetypes = {'gdmo'};
       root_dir = function(fname)
         return require'lspconfig'.util.root_pattern('dfx.json')(fname)
       end;
       settings = {};
       on_new_config = function(new_config, new_root_dir)
         print(new_root_dir .. '/dfx.json')
         local file = io.open(new_root_dir .. '/dfx.json', 'r')
         local config = vim.json.decode(file:read('*a'))
         for name, _ in pairs(config.canisters) do
           table.insert(new_config.cmd, name)
           break
         end
       end;
    }
  }
}
