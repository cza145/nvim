require("toggleterm").setup{
  open_mapping = [[<C-\>]],
  shading_factor = 1, -- 1到3颜色逐渐变深，仅适用于 tab
  direction = 'float', -- tab全屏，float悬浮
  float_opts = {
    border = 'curved',
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}
