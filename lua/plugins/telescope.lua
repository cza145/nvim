local global = require('core.global')
local keymap = require(global.mapping_bind)

local setmaplua = keymap.set_map_lua

require('telescope').setup {
  defaults = {
    default = {
      COLORTERM = "truecolor"
    },
    file_ignore_patterns = {
      "./.git/*",
    },
    --preview = false, -- 文件内容浏览
  },
}
-- 主题设置
local theme = 'require("telescope.themes").get_dropdown({})'

-- 设置键位
local b = 'telescope.builtin'
local telescope_map = {
  {'n',  '\\ss', b,'builtin('    .. theme .. ')<cr>'},    -- 打开 telescope
  {'n',  '\\sf', b,'find_files(' .. theme .. ')<cr>'}, -- 搜索文件
  {'n',  '\\sg', b,'live_grep('  .. theme .. ')<cr>'},  -- 搜索字符
  {'n',  '\\sb', b,'buffers('    .. theme .. ')<cr>'},    -- 搜索buffer
  {'n',  '\\sh', b,'help_tags('  .. theme .. ')<cr>'},  -- 搜索帮助
  {'n',  '\\so', b,'oldfiles('   .. theme .. ')<cr>'},   -- 搜索最近文件
}
for _,m in ipairs(telescope_map) do
  setmaplua(m[1],m[2],m[3],m[4], {noremap = true})
end
