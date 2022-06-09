local global = require('core.global')
local keymap = require(global.mapping_bind)
local config = {}

local setmap = keymap.set_map

  function config.lsp()
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        signs = true,
      }
    )
  end

  function config.spsaga()
    setmap('n', 'K','<CMD>:Lspsaga hover_doc<CR>' , {noremap = true, silent = true})
    require('lspsaga').setup { -- defaults ...
      debug = false,
      use_saga_diagnostic_sign = true,
      -- diagnostic sign
      error_sign = "",
      warn_sign = "",
      hint_sign = "",
      infor_sign = "",
      diagnostic_header_icon = "   ",
      -- code action title icon
      code_action_icon = " ",
      code_action_prompt = {
        enable = true,
        sign = true,
        sign_priority = 40,
        virtual_text = true,
      },
      finder_definition_icon = "  ",
      finder_reference_icon = "  ",
      max_preview_lines = 10,
      finder_action_keys = {
        open = "o",
        vsplit = "s",
        split = "i",
        quit = "q",
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
      },
      code_action_keys = {
        quit = "q",
        exec = "<CR>",
      },
      rename_action_keys = {
        quit = "<C-c>",
        exec = "<CR>",
      },
      definition_preview_icon = "  ",
      border_style = "single",
      rename_prompt_prefix = "➤",
      rename_output_qflist = {
        enable = false,
        auto_open_qflist = false,
      },
      server_filetype_map = {},
      diagnostic_prefix_format = "%d. ",
      diagnostic_message_format = "%m %c",
      highlight_prefix = false,
    }
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
