local global = require('core.global')
local keymap = require(global.mapping_bind)

local setmap = keymap.set_map

-- 安装路径
vim.g.vimspector_base_dir = global.data .. "debug/vimspector/"
-- 键位设置
vim.g.vimspector_enable_mappings = 'VISUAL_STUDIO'
local vimspector_map = {
  {'n', '\\ds', '<Plug>VimspectorContinue'},
  {'n', '\\dp', '<Plug>VimspectorStop'},
  {'n', '\\dr', '<Plug>VimspectorRestart'},
  {'n', '\\db', '<Plug>VimspectorToggleBreakpoint'},
  {'n', '\\dt', '<Plug>VimspectorRunToCursor'},
  {'n', '\\dq', '<Plug>VimspectorOver'},
  {'n', '\\di', '<Plug>VimspectorStepInto'},
  {'n', '\\do', '<Plug>VimspectorStepOut'},
}
-- setmap不起作用，暂时用cmd替换
for _,m in ipairs(vimspector_map) do
  vim.cmd("nmap " .. m[2] .. " " .. m[3])
  --setmap(m[1],m[2],m[3], {noremap = true, silent = true, nowait = true})
end

vim.g.vimspector_install_gadgets = {
  'debugpy',
  'CodeLLDB',
}
