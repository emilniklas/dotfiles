vim.fn.UseSpaces("*.tf", 2)

registerLanguage {
  lsp = {
    terraformls = {
      filetypes = {"terraform","tf"}
    }
  }
}
