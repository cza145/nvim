local global = require('core.global')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require('lspconfig').rust_analyzer.setup({
  cmd = { global.lsp.rust },
  filetypes = { "rust" },
  settings = {
    ["rust-analyzer"] = {}
  },
  capabilities = capabilities,
})
