local global = require('core.global')
local set_noremap = require(global.mapping_bind).set_map
local path = global.debug_path

local dap   = require("dap")
local dapui = require('dapui')

-- 图标设置
vim.fn.sign_define(
  'DapBreakpoint',
  {text   = "⊚",
   texthl = "TodoFgFIX",
   linehl = "",
   numhl  = ""
  })

require('dapui').setup({
  sidebar = {
    -- dapui 的窗口设置在右边
    position = "right"
  }
})

require("nvim-dap-virtual-text").setup()

-- 如果开启或关闭调试，则自动打开或关闭调试界面
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end

-- 显示或隐藏调试界面
--vim.keybinds.gmap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", vim.keybinds.opts)

-- 设置键位
local map = {
  -- 视图模式
  {'n',  '<F5>', '<CMD>:DapContinue<CR>'}, -- 执行到下一断点
  --{'n',  '', '<CMD>:DapSetLogLevel<CR>'},
  --{'n',  '', '<CMD>:DapShowLog<CR>'},
  --{'n',  '', '<CMD>:DapTerminate<CR>'},
  --{'n',  '', '<CMD>:DapToggleRepl<CR>'}, -- 退出调试
  {'n',  '<F9>', '<CMD>:DapToggleBreakpoint<CR>'}, -- 断点
  {'n',  '<F10>', '<CMD>:DapStepOver<CR>'}, -- 单步跳过执行 
  {'n',  '<F11>', '<CMD>:DapStepInto<CR>'}, -- 单步执行
  {'n',  '<F12>', '<CMD>:DapStepOut<CR>'}, -- 跳出当前函数
}
for _,m in ipairs(map) do
  set_noremap(m[1],m[2],m[3], {noremap = true})
end

