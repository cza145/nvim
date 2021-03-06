local global = require('core.global')
local func = require('core.func')

-- 设置键位
local map = {
  -- 视图模式
  {'n',  'vv', 'v'},
  {'n',  'vb', '<C-v>'},
  -- 删除多余空格
  {'n',  '<Space>ed',   '<CMD>:%s/\\s\\+$<CR>'},
  -- bufer 操作
  {'n',  '<Space>bb',   ':b '},
  {'n',  '<Space>bd',   ':bd '},
  {'n',  '<Space>bn',   '<CMD>:bnext<CR>'},
  {'n',  '<Space>bp',   '<CMD>:bprevious<CR>'},
  {'n',  '<Space>bs',   '<CMD>:buffers<CR>'},
  -- Tab
  {'n',  '<Space>1',    '<Esc>:tabn 1<CR>'},
  {'n',  '<Space>2',    '<Esc>:tabn 2<CR>'},
  {'n',  '<Space>3',    '<Esc>:tabn 3<CR>'},
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
  func.set_map(m[1],m[2],m[3], {noremap = true})
end
