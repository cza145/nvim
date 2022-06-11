local global = {}

local data = vim.fn.stdpath('data') -- 用于存放数据文件
local packer = data .. 'site/pack/packer/' -- 插件路径
local os_name = vim.loop.os_uname().sysname -- 系统名

function global:load_variables()

  -- 判断系统
  self.is_mac     = os_name == 'Darwin'
  self.is_linux   = os_name == 'Linux'
  self.is_windows = os_name == 'Windows'

  -- 用于存放缓存文件
  self.cache_dir     = data .. '.cache/'

  -- 插件路径
  self.directory     = packer .. 'opt/'

  -- lsp 安装路径
  self.lsp_path      = data .. 'lsp_servers/'
  -- debug 安装路径
  self.debug_path    = data .. 'debug/'

  -- XkbSwitchLib
  self.XkbSwitchLib_path = '/usr/local/lib/libInputSourceSwitcher.dylib'
  -- friendly-snippets
  self.friendly_snippets = packer .. 'start/friendly_snippets'
  -- glow
  self.glow = data .. 'markdown/glow/'
  -- org
  self.org_dropbox = data .. 'org/Dropbox/org/*'
  self.org_my_orgs = data .. 'org/my-orgs/**/*'
  self.org_refile  = data .. 'org/Dropbox/org/refile.org'

  -- lsp 参数
  self.lsp = {
    clangd    = 'clangd',
    python    = 'jedi-language-server' ,
    lua       = 'lua-language-server' ,
    rust      = 'rust-analyzer',
  }

end

global:load_variables()

return global
