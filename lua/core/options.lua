local global = require('core.global')

local global_local = {
  autochdir      = false; -- 自动切换目录
  termguicolors  = true;  -- 开启真色彩
  errorbells     = false; -- 错误响铃，默认关闭
  visualbell     = false; -- 设置响铃，默认关闭
  hidden         = true;  -- 不保存当前文件也可编辑其它文件
  magic          = true;  -- 开启 magic
  wildignorecase = true;  -- 匹配文件名时忽略大小写
  backup         = false; -- 禁止生成临时文件
  writebackup    = false; -- 禁止覆盖文件前创建备份文件
  swapfile       = false; -- 禁止创建交换文件
  smarttab       = true;  -- 智能 tab
  shiftround     = true;  -- 保证缩进宽度是 shiftwidth 的倍数
  timeout        = true;  -- 开启快捷键的等待时间
  ignorecase     = true;  -- 搜索忽略大小写
  smartcase      = true;  -- 智能区分搜索时是否区分大小写
  infercase      = true;  -- 补全时不区分大小写
  hlsearch       = true;  -- 搜索时高亮
  incsearch      = false; -- 一边输入一边显示结果
  wrapscan       = true;  -- 循环搜索
  startofline    = false; -- 移动光标时光标停留在第一个非空行
  splitbelow     = true;  -- 分割出来的窗口位于当前窗口下边
  splitright     = true;  -- 分割出来的窗口位于当前窗口右边
  showmode       = false; -- 底部显示当前模式
  ruler          = false; -- 状态栏标尺
  foldenable     = true;  -- 开启折叠
  list           = true;  -- 显示不可见字符
  showcmd        = true;  -- 显示命令信息
  equalalways    = true;  -- 分割窗口时保持等宽高
  history        = 2000;  -- 最大历史记录 2000 条
  timeoutlen     = 100;   -- 设置快捷键等待时间
  scrolloff      = 5;    -- 距离底部 5 行时开始翻页
  foldlevelstart = 99;   -- 避免启动编辑器时代码自动折叠
  showtabline    = 1;    -- 创建标签页后显示标签栏
  pumheight      = 15;   -- 定义补全菜单的高度
  laststatus     = 2;    -- 状态栏显示文件名
  pumblend       = 10;   -- 设置 pseudo-transparency 为一个弹出式窗口
  winblend       = 10;   -- 设置 pseudo-transparency 为一个悬浮窗口
  helpheight     = 80;   -- 设置帮助窗口的默认高度
  mouse          = "nv"; -- 启用鼠标
  fileformats    = "unix," .. -- 设置文件格式
                   "mac,"  ..
                   "dos";
  virtualedit    = "block"; -- 可视模式编辑
  encoding       = "utf-8"; -- 设置编码
  foldmethod     = "expr"; -- 折叠方式
  foldexpr       = "nvim_treesitter#foldexpr()";
  viewoptions    = "folds,"  .. -- 设置保存的视图信息
                   "cursor," ..
                   "curdir," ..
                   "slash,"  ..
                   "unix";
  sessionoptions = "curdir,"   .. -- 设置保存的会话信息
                   "help,"     ..
                   "tabpages," ..
                   "winsize";
  clipboard      = "unnamedplus"; -- 与系统共享剪切板
  wildignore     = ".git,"   .. -- 搜索文件时忽略以下文件
                   ".hg,"    ..
                   ".svn,"   ..
                   "*.pyc,"  ..
                   "*.o,"    ..
                   "*.out,"  ..
                   "*.jpg,"  ..
                   "*.jpeg," ..
                   "*.png,"  ..
                   "*.gif,"  ..
                   "*.zip,"  ..
                   "**/tmp/**," ..
                   "*.DS_Store," ..
                   "**/node_modules/**," ..
                   "**/bower_modules/**";
  directory      = global.cache_dir .. -- 用于保存临时文件 
                   "swag/";
  undodir        = global.cache_dir .. -- 保存插销记录 
                   "undo/"; 
  backupdir      = global.cache_dir .. -- 用于保存备份文件 
                   "backup/";
  viewdir        = global.cache_dir .. -- 用于保存视图
                   "view/";
  spellfile      = global.cache_dir .. -- 单词保存路径，用于检查单词拼写错误
                   "spell/en.uft-8.add";
  shada          = "!,'300,<50,@100,s10,h"; -- 保存退出时的信息
  backupskip     = "/tmp/*,"    .. -- 以下文件不备份
                   "$TMPDIR/*," ..
                   "$TMP/*,"    ..
                   "$TEMP/*,"   ..
                   "*/shm/*,"   ..
                   "/private/var/*," ..
                   ".vault.vim";
  complete       = ".,w,b,k"; -- 开启补全
  inccommand     = "nosplit"; -- split 命令的更改会在preview中显示-- nosplit 命令更改会在原位置显示
  grepformat     = "%f:%l:%c:%m"; -- 定制 grep 操作，grep用于搜索文件
  grepprg        = 'rg ' ..
                   '--hidden ' ..
                   '--vimgrep ' ..
                   '--smart-case --';
  breakat        = [[\ \	;:,!?]]; -- 以这些值为基准折行
  whichwrap      = "h,l,<,>,[,],~"; -- h，l 移动光标时可以换行
  switchbuf      = "useopen"; -- 控制 buffer 间的行为
  backspace      = "indent," .. -- 设置 backspace 键
                   "eol,"    ..
                   "start";
  diffopt        = "filler," .. -- 比较文件
                   "iwhite," ..
                   "internal," ..
                   "algorithm:patience";
  completeopt    = "menuone," .. -- 补全设置
                   "noinsert," ..
                   "noselect";
  jumpoptions    = "stack"; -- jump设置
  display        = "lastline"; -- 设置文本显示方式
  showbreak      = "+---"; -- 折行处显示
  listchars      = "tab:»·,"  .. -- 配置不可见字符的显示
                   "nbsp:+,"  ..
                   "trail:·," ..
                   "extends:→," ..
                   "precedes:←";
}
local bw_local  = {
  undofile       = true;  -- 记录撤销历史记录，使撤销永久化
  expandtab      = true;  -- Tab 替换为空格
  autoindent     = true;  -- 开启自动缩进
  wrap           = false; -- 自动折行
  linebreak      = false; -- 折行
  number         = true;  -- 开启行号
  relativenumber = true;  -- 开启相对行号
  cursorline     = true;  -- 高亮当前行
  cursorcolumn   = true;  -- 高亮当前列
  synmaxcol      = 2500; -- 一行超过 3000 字符报错
  tabstop        = 2;    -- 设置 Tab 键宽度
  shiftwidth     = 2;    -- 换行时的自动缩进列数
  softtabstop    = -1;   -- 修改 Tab 键行为
  conceallevel   = 0;    --  设置隐藏字符，正常显示显示隐藏文本
  formatoptions  = "1jcroql";    -- 设置文本格式化的格式
  breakindentopt = "shift:2," .. -- 设置自动换行的格式
                   "min:20";
  signcolumn     = "auto";       -- 显示每行前的显示字符
  concealcursor  = "niv";        -- 普通插入可视化模式下，当前行显示隐藏字符
}

local g_local = {
  AutoClosePreserveDotReg = 0;
}

local wo_local = {
  wrap = false;
}

local cmd_local = {
  'set shortmess+=c';
}

--------------------
--------------------

for name, value in pairs(global_local) do
  vim.o[name] = value
end

for k, v in pairs(bw_local) do
  if v == true or v == false then
    vim.cmd('set ' .. k)
  else
    vim.cmd('set ' .. k .. '=' .. v)
  end
end

for name,value in pairs(g_local) do
  vim.g[name] = value
end

for name,value in pairs(wo_local) do
  vim.wo[name] = value
end

for _,m in ipairs(cmd_local) do
  vim.api.nvim_command(m)
end
