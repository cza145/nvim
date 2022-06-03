require("bufferline").setup{
  options = {
    numbers = "buffer_id",
    diagnostics = "false", -- "nvim_lsp" || "coc" ||"false"
    --mappings = true,
    close_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    indicator_icon = "▎",
    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
  },
  highlights = {
    fill = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF',
    },
    background = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF',
    },
    tab = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF',
    },
    tab_selected = {
      guifg = '#00868B',
      guibg = '#FFFFFF',
    },
    tab_close = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF'
    },
    close_button = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF'
    },
    close_button_visible = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF',
    },
    close_button_selected = {
      guifg = '#00868B',
      guibg = '#FFFFFF'
    },
    buffer_visible = {
      guifg = '#70C0BA',
      guibg = '#FFFFFF'
    },
    buffer_selected = {
      guifg = '#00868B',
      guibg = '#FFFFFF',
      gui = "bold,italic"
    },
    separator_selected = {
      guifg = '#00868B',
      guibg = '#FFFFFF'
    },
    separator_visible = {
      guifg = '#00868B',
      guibg = '#FFFFFF'
    },
    separator = {
      guifg = '#00868B',
      guibg = '#FFFFFF'
    },
  }
}
