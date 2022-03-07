local global = require('core.global')
local lsp_config = global.lsp.config
local lsp = require(lsp_config .. '.lsp')
local plugins = require(lsp_config .. '.config')

---------- 补全
require(lsp_config .. '.cmp')

---------- lsp
lsp.jedi()          -- python
lsp.lua()           -- lua
lsp.clangd()        -- C/C++
lsp.rust_analyzer() -- rust

---------- other plugins
plugins.lsp()
plugins.symbols_outline()
plugins.trouble()
