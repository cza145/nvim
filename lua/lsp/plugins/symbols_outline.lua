local func = require('core.func')

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
func.set_map('n','<Leader>ls', '<CMD>SymbolsOutline<CR>', {noremap = true})
