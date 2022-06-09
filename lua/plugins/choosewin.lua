local func = require('core.func')

-- 选择是屏幕中间显示分屏编号
vim.g.choosewin_overlay_enable = 0
-- 绑定快捷键
func.set_map('n','\\w','<CMD>ChooseWin<CR>', {noremap = true})

