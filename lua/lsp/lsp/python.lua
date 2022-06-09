local global = require('core.global')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require('lspconfig').jedi_language_server.setup({
  cmd = { global.lsp.python },
  capabilities = capabilities,
})
