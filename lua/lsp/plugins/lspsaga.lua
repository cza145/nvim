local func = require('core.func')

-- 显示变量或函数信息
func.set_map('n', 'K',  '<CMD>Lspsaga hover_doc<CR>' ,            {silent = true, noremap = true})

require('lspsaga').setup {
  use_saga_diagnostic_sign = false,
}
