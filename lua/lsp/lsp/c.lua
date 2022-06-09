local global = require('core.global')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require'lspconfig'.clangd.setup({
  cmd = {
    global.lsp.clangd,
    "--background-index",
    "--compile-commands-dir=build",
    "-j=12",
    "--query-driver=/usr/bin/clang++",
    "--clang-tidy",
    "--clang-tidy-checks=performance-*,bugprone-*",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--pch-storage=disk",
  },
  filetypes = { "c", "cc", "cpp", "objc", "objcpp" , "h"},
  on_init = {
    clangdFileStatus = true,
  },
  handlers = require "lsp-status".extensions.clangd.setup(),
  capabilities = capabilities,
})
