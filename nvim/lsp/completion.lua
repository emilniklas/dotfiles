local cmp = require 'cmp'

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  sources = cmp.config.sources {
    { name = 'nvim_lsp' }
  }
}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

for _, server in pairs(require('lspconfig')) do
  if type(server) == 'table' and type(server.setup) == 'function' then
    server.setup {
      capabilities = capabilities
    }
  end
end