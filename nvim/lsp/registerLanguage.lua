local languages = {}

function registerLanguage(language)
  table.insert(languages, language)
end

function finalizeLanguages()
  local lsp = require 'lspconfig'
  local configs = require 'lspconfig.configs'

  for _, language in pairs(languages) do
    if language.lsp then
      for name, config in pairs(language.lsp) do
        if language.define_lsp and not configs[name] then
          configs[name] = {
            default_config = config
          }
        end
        lsp[name].setup(config)
      end
    end
  end
end
