vim.fn.UseTabs("*.go", 8)

registerLanguage {
  lsp = {
    gopls = {
      experimentalPostfixCompletions = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    }
  }
}
