-------- neovide gui 设置 --------

vim.opt.guifont="Cousine Nerd Font Mono:h16" -- 字体

local neovide_option = {
  refresh_rate  = 120,   -- 刷新率
  transparency  = 1.0,   -- 透明度
  no_idle       = false,
  fullscreen    = false, -- 全屏
  input_use_logo= true,
  cursor_animation_length = 0.13,  -- 光标动画长度
  cursor_trail_length = 0.8,       -- 光标的宽度
  cursor_vfx_mode     = "railgun", -- 光标动画
  cursor_vfx_opacity  = 200.0,     -- 光标透明度
  cursor_vfx_particle_lifetime  = 8.0, -- 动画停留时间
}

for name, value in pairs(neovide_option) do
  vim.g['neovide_' .. name] = value
end
