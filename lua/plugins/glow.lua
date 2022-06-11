local global = require('core.global')
local func = require('core.func')

-- 安装路径
vim.g.glow_binary_path = global.glow
-- 设置边框
vim.g.glow_border = "rounded"

func.set_map('n', '\\pg', '<CMD>Glow<CR>', {noremap = true})
