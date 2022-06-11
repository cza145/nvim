require('orgmode').setup_ts_grammar()

local func = require('core.func')

func.set_map('n','<Leader>t=','<Esc>ggvG=',{noremap = true})

require'nvim-treesitter.configs'.setup {
  ------ 启动代码高亮
  highlight = {
    enable = true,
    disable = {
      'org'
    },
    additional_vim_regex_highlighting = {
      'org'
    },
  },
  ------ 基于 treesitter 的代码格式化
  indent = {
    enable = true,
  },
  ------ 启用增量选择
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
  },
  ensure_installed = {
    'bash',
    'c',
    'c_sharp',
    'cmake',
    'cpp',
    'css',
    'dockerfile',
    'go',
    'html',
    'python',
    'java',
    'javascript',
    'json',
    'latex',
    'llvm',
    'lua',
    'markdown',
    'org',
    'query',
    'rst',
    'rust',
    'ruby',
    'toml',
    'vim',
    'yaml',
  },
  ------ 自动 Tag
  autotag = {
    enable = true,
    filetypes = {
      "html",
      "xml",
    },
  },
  matchup = {
    enable = true,
  },
  ---- 变量智能重命名
  refactor = {
    highlight_current_scope = { enable = true },
    smart_rename = {
      enable = true,
      keymaps = { -- 设置键位
        smart_rename = "<Leader>tr",
      },
    },
  },
  tree_docs = {enable = true},
  ---- 彩虹括号
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
    colors = {
      "#ff8c00",
      "#ff1493",
      "#9400d3",
      "#ff3030",
      "#ff0000",
      "#00bfff",
      "#90ee90",
      "#ffb5c5",
      "#ffe7ba",
      "#00ffff",
    },
    termcolors = {
      "231",
      "220",
      "211",
      "200",
      "240",
      "213",
      "227",
      "201",
      "236",
      "209",
    },
  },
}
