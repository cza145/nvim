local func = require('core.func')

require('telescope').setup {
  defaults = {
    default = {
      COLORTERM = "truecolor"
    },
    file_ignore_patterns = { -- 忽略以下文件
      "./.git/*",
    },
    preview = false, -- 文件内容浏览
  },
}

-- 主题设置
local theme = 'dropdown'

-- 设置键位
local telescope_map = {
  {'n',  '<Leader>ss','builtin'},    -- 打开 telescope
  {'n',  '<Leader>sf','find_files'}, -- 搜索文件
  {'n',  '<Leader>sg','live_grep'},  -- 搜索字符
  {'n',  '<Leader>sb','buffers'},    -- 搜索buffer
  {'n',  '<Leader>sh','help_tags'},  -- 搜索帮助
  {'n',  '<Leader>so','oldfiles'},   -- 搜索最近文件
  {'n',  '<Leader>sd','diagnostics'},   -- 搜索警告错误
}

for _,m in ipairs(telescope_map) do
  func.set_map(m[1], m[2], '<CMD>Telescope ' .. m[3] .. ' theme=' .. theme .. '<CR>', {noremap = true})
end
