-- 加载路径

local plugins_config_list = {
  'neogit',
  'galaxyline',
  --'bufferline',
  --'winbar',
  'colorizer',
  'glow',
  'vimspector',
  --'dap',
  'treesitter',
  'toggleterm',
  'choosewin',
  'telescope',
  'xkbswitch',
  'neo_tree',
  'pretty_fold'
}

for _,m in ipairs(plugins_config_list) do
  require('plugins.' .. m)
end
