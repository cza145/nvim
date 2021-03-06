local global = require('core.global')

require('lsp.config')

-- 补全
require('lsp.plugins.cmp')
require('lsp.plugins.luasnip')
-- 动作 UI
require('lsp.plugins.lspsaga')
-- 参数列表
require('lsp.plugins.symbols_outline')
-- 错误列表
require('lsp.plugins.trouble')

-- lsp
require('lsp.lsp.c')
require('lsp.lsp.lua')
require('lsp.lsp.python')
require('lsp.lsp.rust')
--require('lsp.lsp.csharp')
