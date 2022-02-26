local global = require('core.global')
local keymap = require(global.mapping_bind)

local setmap = keymap.set_map

vim.g.glow_binary_path = global.data .. "markdown/glow/"
vim.g.glow_border = "rounded"

setmap('n', '\\pg', '<CMD>Glow<CR>', {noremap = true})
