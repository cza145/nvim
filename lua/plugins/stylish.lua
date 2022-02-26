local global = require('core.global')
local keymap = require(global.mapping_bind)

local setmaplua = keymap.set_map_lua

local stylish_map = {
  { 'n', '\\um',
    'stylish',
    "ui_menu(vim.fn.menu_get(''), {kind=menu, prompt = 'Main Menu', experimental_mouse = true}, function(res) print('### ' ..res) end)<cr>",
  },
  { 'n', '\\uc',
    'stylish',
    "ui_clock()<cr>",
  },
}

for _,m in ipairs(stylish_map) do
  setmaplua(m[1], m[2], m[3], m[4], { noremap = true, silent = true })
end
