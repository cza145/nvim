local global = require('core.global')
-- 加载设置键位的函数
local set_noremap = require(global.mapping_bind).set_map

-- 设置键位
local map = {
  -- 视图模式
  {'n',  'vv', 'v'},
  {'n',  'vb', '<C-v>'},
  -- 删除多余空格
  {'n',  '<Space>fsd', '<CMD>:%s/\\s\\+$<CR>'},
  -- bufer 操作
  {'n',  '<Space>bb',   ':b '},
  {'n',  '<Space>bd',   ':bd '},
  {'n',  '<Space>bn',   '<CMD>:bnext<CR>'},
  {'n',  '<Space>bp',   '<CMD>:bprevious<CR>'},
  {'n',  '<Space>bs',   '<CMD>:buffers<CR>'},
  -- Tab
  {'n',  '<Space>te',   '<CMD>:tabe<CR>'},
  {'n',  '<Space>tt',   '<Esc>:tabn '},
  {'n',  '<Space>tq',   '<Esc>:tabc '},
  {'n',  '<Space>to',   '<CMD>:tabo<CR>'},
  {'n',  '<Space>tn',   '<CMD>:tabn<CR>'},
  {'n',  '<Space>tp',   '<CMD>:tabp<CR>'},
  -- 窗口操作
  {'n',  '<Space>w',    '<C-w>'},
  {'n',  '<Space>we',   '<CMD>:Ex<CR>'},
  -- 退出插入模式
  {'i',  '<C-g>','<Esc>'},
  -- 移动到行首行尾
  {'i',  '<C-a>' ,'<Esc>0i'},
  {'i',  '<C-e>' ,'<Esc>$a'},
}

for _,m in ipairs(map) do
  set_noremap(m[1],m[2],m[3], {noremap = true})
end
