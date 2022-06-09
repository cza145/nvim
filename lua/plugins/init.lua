-- 加载路径

local plugins_config_list = {
  'neogit',
  'galaxyline',
  'bufferline',
  'colorizer',
  'glow',
  'orgmode',
  'vimspector',
  --'dap',
  'treesitter',
  'toggleterm',
  'choosewin',
  'telescope',
  'xkbswitch',
}

for _,m in ipairs(plugins_config_list) do
  require('plugins.' .. m)
end
