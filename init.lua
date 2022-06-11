-- Leader
vim.g.mapleader = "\\";

require('core.options')     -- 基本设置
require('core.packer')      -- 插件管理器
require('core.environment') -- 环境变量配置
require('core.mapping')     -- 按键设置
require('core.plugins')     -- 插件列表
require('plugins')          -- 插件配置
require('core.theme')       -- 主题
require('lsp')              -- lsp
require('core.neovide')     -- gui
require('plugins.whichkey') -- whichkey
