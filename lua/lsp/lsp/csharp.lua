local global = require('core.global')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require('lspconfig').csharp_ls.setup({
  cmd = { global.lsp.clangd},
  filetypes = { "cs" },
  init_options = {
    AutomaticWorkspaceInit = true
  },
  capabilities = capabilities,
})
