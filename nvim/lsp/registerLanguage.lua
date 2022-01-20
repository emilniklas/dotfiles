local languages = {}

function registerLanguage(language)
    table.insert(languages, language)
end

function finalizeLanguages()
    for _, language in pairs(languages) do
        if language.lsp then
            for name, config in pairs(language.lsp) do
                require'lspconfig'[name].setup(config)
            end
        end
    end
end