local global = {}

--local home = os.getenv("HOME")
--local path_sep = global.is_windows and '\\' or '/'
local data = vim.fn.stdpath('data') -- 用于存放数据文件
local os_name = vim.loop.os_uname().sysname

function global:load_variables()

  -- 判断系统
  self.is_mac     = os_name == 'Darwin'
  self.is_linux   = os_name == 'Linux'
  self.is_windows = os_name == 'Windows'

  -- data 路径
  self.data          = data .. '/'             -- 用于存放数据文件
  self.cache_dir     = data .. '.cache/'       -- 用于存放缓存文件
  self.directory     = data .. 'site/pack/packer/opt/' -- 插件路径
  self.packer_start  = data .. 'site/pack/packer/start/' -- 插件路径
  self.lsp_path      = data .. 'lsp_servers/'  -- lsp 路径
  self.debug_path    = data .. 'debug/'        -- debug 路径

  self.XkbSwitchLib_path = '/usr/local/lib/libInputSourceSwitcher.dylib'

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
