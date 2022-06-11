local global = require("core.global")

require("luasnip.loaders.from_vscode").load({
  include = { 
    global.friendly_snippets -- friendly-snippets
  }
})
