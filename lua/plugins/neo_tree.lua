local func = require('core.func')

require("neo-tree").setup({
  close_if_last_window = false,
  popup_border_style = "rounded",
  window = {
    position = "float",
    width = 60,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
  }
})

func.set_map('n','<Leader>b','<CMD>:NeoTreeFloatToggle<CR>',{noremap = true})
