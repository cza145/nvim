-- 加载路径
local global = require('core.global')
local config = global.plugins_config .. '.'

local plugins_config_list = {
  'neogit',
  'galaxyline',
  'bufferline',
  'colorizer',
  'glow',
  'orgmode',
  'vimspector',
  'treesitter',
  'toggleterm',
  'choosewin',
  'telescope',
  'stylish'
}

for _,m in ipairs(plugins_config_list) do
  require(config .. m)
end
