-- 加载全局路径
local global = require('core.global')

-- Leader
vim.g.mapleader = "e";

require(global.options)          -- 基本设置
require(global.packer)           -- 插件管理器
require(global.environment)      -- 环境变量配置
require(global.mapping)          -- 按键设置
require(global.plugins)          -- 插件
require(global.plugins_config)   -- 插件配置
require(global.theme)            -- 主题
require(global.lsp.config)       -- lsp
require(global.neovide)          -- gui
require(global.plugins_config .. '.whichkey')

