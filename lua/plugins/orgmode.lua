local global = require('core.global')

require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {
    global.org_dropbox,
    global.org_my_orgs
  },
  org_default_notes_file = global.org_refile,
})

-- TODO
require("headlines").setup {}

require("org-bullets").setup {
  symbols = { "◉", "○", "✸", "✿" },
}
