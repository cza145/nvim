local global = require('core.global')
local keymap = require(global.mapping_bind)
local config = {}

local setmap    = keymap.set_map


  function config.lsp()
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        signs = true,
      }
    )
    setmap('n', '\\lj',
      vim.cmd("autocmd CursorHold <buffer> lua vim.lsp.diagnostic.show_line_diagnostics({ focusable = false })"),
      {noremap = true})
  end

  function config.symbols_outline()
    vim.g.symbols_outline = {
      position = 'right',
      width = 55,
      keymaps = {
        close = {"<Esc>", "q"},
        goto_location = "<Cr>",
        focus_location = "o",
        toggle_preview = "K",
        rename_symbol = "r",
      },
    }
    setmap('n','\\ls', '<CMD>SymbolsOutline<CR>', {noremap = true})
    setmap('n','<M-7>', '<CMD>SymbolsOutline<CR>', {noremap = true})
  end


  function config.trouble()
    require("trouble").setup {
      action_keys = {
        close = {"q", "<Esc>"},
        refresh = "r",
        jump = {"<cr>", "<tab>"},
        open_split = { "<c-x>" },
        open_vsplit = { "<c-v>" },
        open_tab = { "<c-t>" },
        jump_close = {"o"},
        toggle_mode = "m",
        toggle_preview = "P",
        hover = "K",
        preview = "p",
        close_folds = {"zM", "zm"},
        open_folds = {"zR", "zr"},
        toggle_fold = {"zA", "za"},
        previous = "k",
        next = "j"
      },
    }
    setmap('n','\\lt', '<CMD>TroubleToggle<CR>', {noremap = true})
  end


return config
