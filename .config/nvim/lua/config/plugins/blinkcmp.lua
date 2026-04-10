local capabilities = {
    textDocument = {
        foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
        },
    },
}

capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

vim.lsp.config("*", {
    capabilities = capabilities,
})

vim.lsp.config('lua_ls', {
  filetypes = { 'lua' },
})

vim.lsp.config('gopls', {
  filetypes = { 'go' },
})
