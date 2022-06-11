local global = require('core.global')
local func   = require('core.func')

-- 安装路径
vim.g.vimspector_base_dir = global.debug_path .. "vimspector/"
-- 键位设置
vim.g.vimspector_enable_mappings = 'VISUAL_STUDIO'
local vimspector_map = {
  {'n', '<Leader>ds', '<Plug>VimspectorContinue'},
  {'n', '<Leader>dp', '<Plug>VimspectorStop'},
  {'n', '<Leader>dr', '<Plug>VimspectorRestart'},
  {'n', '<Leader>db', '<Plug>VimspectorToggleBreakpoint'},
  {'n', '<Leader>dt', '<Plug>VimspectorRunToCursor'},
  {'n', '<Leader>dq', '<Plug>VimspectorOver'},
  {'n', '<Leader>di', '<Plug>VimspectorStepInto'},
  {'n', '<Leader>do', '<Plug>VimspectorStepOut'},
}

-- setmap不起作用，暂时用cmd替换
for _,m in ipairs(vimspector_map) do
  func.set_map(m[1],m[2],m[3], {noremap = true})
end

vim.g.vimspector_install_gadgets = {
  'debugpy',
  'CodeLLDB',
}
