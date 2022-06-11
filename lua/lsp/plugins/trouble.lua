local func = require('core.func')

func.set_map('n','<Leader>lt', '<CMD>TroubleToggle<CR>', {noremap = true})

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
    open_folds  = {"zR", "zr"},
    toggle_fold = {"zA", "za"},
    previous = "k",
    next = "j"
  },
}
