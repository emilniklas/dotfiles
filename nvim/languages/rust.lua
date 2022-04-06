vim.fn.UseSpaces("*.rs", 4)

registerLanguage {
  lsp = {
    rust_analyzer = {
      settings = {
        ["rust-analyzer"] = {
          assist = {
            importGranularity = "module",
            importPrefix = "by_self",
          },
          cargo = {
            loadOutDirsFromCheck = true
          },
          procMacro = {
            enable = true
          },
        }
      }
    }
  }
}
