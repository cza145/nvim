local global = require('core.global')
local keymap = require(global.mapping_bind)
local setmap = keymap.set_map

vim.g.choosewin_overlay_enable = 0 -- 选择是屏幕中间显示分屏编号
-- 绑定快捷键
setmap('n','\\w','<CMD>ChooseWin<CR>', {noremap = true})

