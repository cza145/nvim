local global = require('core.global')
local lsp = require('lsp.lsp')
local plugins = require('lsp.config')

---------- 补全
require('lsp.cmp')

---------- lsp
lsp.jedi()          -- python
lsp.lua()           -- lua
lsp.clangd()        -- C/C++
lsp.rust_analyzer() -- rust

---------- other plugins
plugins.lsp()
plugins.spsaga()
plugins.symbols_outline()
plugins.trouble()
