local global = require('core.global')
local keymap = require(global.mapping_bind)

local setmap = keymap.set_map

require 'colorizer'.setup {
  --'*';
}
DEFAULT_OPTIONS = {
  RGB      = true;
  RRGGBB   = true;
  names    = true;
  RRGGBBAA = false;
  rgb_fn   = false;
  hsl_fn   = false;
  css      = false;
  css_fn   = false;
  mode     = 'background';
}
setmap('n','\\pc','<CMD>ColorizerToggle<CR>', {noremap = true})
