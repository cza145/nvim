-- 加载路径plugin
return require('packer').startup({function()
  -- if packer == nil then
  -- 	packer = require('packer')
  -- 	packer.init()
  -- end

  use {'wbthomason/packer.nvim', -- packer
    opt = true
  }
  -------- theme
  use 'yuttie/hydrangea-vim'
  use 'Shatur/neovim-ayu'
  use 'Th3Whit3Wolf/one-nvim'
  use 'NTBBloodbath/doom-one.nvim'
  use "EdenEast/nightfox.nvim"

  use 'kyazdani42/nvim-web-devicons'  -- 图标，状态栏使用
  use 'nvim-lua/plenary.nvim'         -- 搜索等依赖插件
  use 'mbbill/undotree'               -- 撤销可视化
  use 'RRethy/vim-illuminate'         -- 高亮与光标处相同的单词
  use 'norcalli/nvim-colorizer.lua'   -- 荧光笔
  use 'akinsho/toggleterm.nvim'       -- 终端
  use 't9md/vim-choosewin'            -- 多屏跳转以及切换标签
  use 'glepnir/galaxyline.nvim'       -- 状态栏
  use 'akinsho/bufferline.nvim'       -- buffer栏
  use 'nvim-telescope/telescope.nvim' -- 搜索
  use "ellisonleao/glow.nvim"         -- 终端浏览markdown
  use 'folke/todo-comments.nvim'      -- TODO
  use 'sunjon/stylish.nvim'           -- UI
  use 'lyokha/vim-xkbswitch'          -- 中文切换

  use 'nathom/filetype.nvim'          -- 加快打开文件速度
  use 'lewis6991/impatient.nvim'      -- 提高加载lua的速度

  use {'TimUntersberger/neogit', -- neogit
    requires = {
      'sindrets/diffview.nvim',
    },
  }

  use {'nvim-orgmode/orgmode',  -- org mode
    requires = {
      'dhruvasagar/vim-table-mode',
      'lukas-reineke/headlines.nvim',
      'akinsho/org-bullets.nvim',
      'michaelb/sniprun',
    }
  }
  use { 'michaelb/sniprun',     -- 执行代码块
    run = 'bash ./install.sh'}

  -- 语法高亮
  use {'nvim-treesitter/nvim-treesitter',
    requires = {
      'p00f/nvim-ts-rainbow', -- 彩虹括号
      'nvim-treesitter/nvim-treesitter-refactor', -- 智能定义
    },
    run = ":TSUpdate"
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
      requires = { 
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      }
    }

  use 'puremourning/vimspector'       -- debug
  --use {'mfussenegger/nvim-dap',         -- debug
  --  requires = {
  --    'rcarriga/nvim-dap-ui',
  --    'Pocco81/dap-buddy.nvim',
  --    'theHamsta/nvim-dap-virtual-text',
  --    'mfussenegger/nvim-dap-python', --python
  --  }
  --}

  use {'hrsh7th/nvim-cmp', -- 补全
    requires = {
      'neovim/nvim-lspconfig',--lsp
      'ray-x/cmp-treesitter', -- treesitter
      'hrsh7th/cmp-emoji',    -- emoji补全
      'hrsh7th/cmp-buffer',   -- buffer补全
      'hrsh7th/cmp-path',     -- 路径补全
      'L3MON4D3/LuaSnip',     -- 模板
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp', -- lsp
      'onsails/lspkind-nvim', -- 补全窗口主题
      'quangnguyen30192/cmp-nvim-tags', -- tags 补全
    }
  }
  use {'neovim/nvim-lspconfig', -- lsp
    requires = {
      'nvim-lua/lsp-status.nvim',        -- lsp 状态
      'williamboman/nvim-lsp-installer', -- lsp 安装程序
      'hrsh7th/cmp-nvim-lsp',            -- cmp 补全
      'simrat39/symbols-outline.nvim',   -- 显示参数列表并修改
      'folke/trouble.nvim',              -- error warn 列表
      'ray-x/lsp_signature.nvim',        -- 显示函数的参数
      'tami5/lspsaga.nvim'               -- 提供各种动作的UI
    },
  }
  use 'folke/which-key.nvim' -- 快捷键帮助，建议放到最后
end,
  config = {
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    },
    git = {
      cmd = 'git',
      clone_timeout = 2000,
    },
  }})

