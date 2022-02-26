local global = require('core.global')

require('orgmode').setup({
  org_agenda_files = {
    global.data .. 'org/Dropbox/org/*',
    global.data .. 'org/my-orgs/**/*'},
  org_default_notes_file = global.data .. 'org/Dropbox/org/refile.org',
})

-- TODO
require("headlines").setup {}

require("org-bullets").setup {
  symbols = { "◉", "○", "✸", "✿" },
}
