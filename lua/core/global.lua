local global = {}
--local home = os.getenv("HOME")
local path_sep = global.is_windows and '\\' or '/'
local os_name = vim.loop.os_uname().sysname

function global:load_variables()
  -- 判断系统
  self.is_mac = os_name == 'Darwin'
  self.is_linux = os_name == 'Linux'
  self.is_windows = os_name == 'Windows'
  self.data = vim.fn.stdpath('data') .. '/'
  -- 用于存放一些缓存文件
  self.cache_dir = string.format(
    '%s/.cache/',
    vim.fn.stdpath('data')
  )
  -- 插件路径
  self.directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )
  -- lsp  路径
  self.lsp_path = string.format(
    '%s/lsp_servers/',
    vim.fn.stdpath('data'))
  -- debug 路径
  self.debug_path = string.format(
    '%s/debug/',
    vim.fn.stdpath('data'))
  -- 路径分隔符
  self.path_sep = path_sep

  self.options          = 'core.options'     -- 基本配置
  self.packer           = 'core.packer'      -- 插件管理器
  self.neovide          = 'core.neovide'     -- gui设置
  self.mapping          = 'core.mapping'     -- 基本按键配置
  self.plugins          = 'core.plugins'     -- 插件
  self.plugins_config   = 'plugins'          -- 插件配置
  self.environment      = 'core.environment' -- 环境变量
  self.theme            = 'core.theme'       -- 主题配置

  -- function
  self.mapping_bind     = 'function.bind'    -- setmap
  self.cmp_setting      = 'function.cmp'     -- cmp

  -- lsp command 设置
  self.lsp = {
    config = 'lsp',
    cmd = {
      clangd    = 'clangd',
      python    = 'jedi-language-server' ,
      lua       = 'lua-language-server' ,
      rust      = 'rust-analyzer',
    },
  }
end

global:load_variables()

return global
