local global = require("core.global")

require("luasnip.loaders.from_vscode").load({
  include = { 
    global.packer_start .. 'friendly-snippets' -- friendly-snippets
  }
})
