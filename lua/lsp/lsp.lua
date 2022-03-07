---------- lsp
local config = {}
local global = require('core.global')
local lsp    = require('lspconfig')

local path = global.lsp_path
local cmd = global.lsp.cmd

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

lsp.vimls.setup{
  on_attach = require("aerial").on_attach,
}

local servers = {
  'clangd',
  'jedi_language_server',
  'sumneko_lua',
  'cmake',
  'csharp_ls',
  'rust_analyzer',
}
for _, lsp_server in ipairs(servers) do
  require"lspconfig"[lsp_server].setup {
    capabilities = capabilities,
  }
end

  function config.rust_analyzer()
    lsp.rust_analyzer.setup({
      cmd = { cmd.rust },
      filetypes = { "rust" },
      settings = {
        ["rust-analyzer"] = {}
      },
    })
  end

  ---------- C#
  function config.csharp_ls()
    lsp.csharp_ls.setup({
      cmd = { cmd.csharp_ls },
      filetypes = { "cs" },
      init_options = {
        AutomaticWorkspaceInit = true
      }
    })
  end

  ---------- C/C++
  function config.clangd()
    require'lspconfig'.clangd.setup({
      cmd = {
        cmd.clangd,
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
    })
  end

  ---------- python
  function config.jedi()
    lsp.jedi_language_server.setup({
      cmd = { cmd.python },
    })
  end

  ---------- lua
  function config.lua()
    lsp.sumneko_lua.setup({
      cmd = {cmd.lua},
      settings = {
        Lua = {
          runtime = {
            version = 'LuaJIT',
            path = vim.split(package.path, ';'),
          },
          diagnostics = {
            globals = {'vim'},
          },
          workspace = {
            library = {
              [vim.fn.expand('$VIMRUNTIME/lua')] = true,
              [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            },
          },
        }
      },
    })
  end

return config
