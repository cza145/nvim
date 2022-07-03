require("which-key").setup {
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "",
  },
  layout = {
    height = {
      min = 2,
      max = 10
    },
  },
}
require("which-key").register({
  ["<Leader>b"]   = { name = "Browser" },
  ["<Leader>p"]   = { name = "Preview+" },
  ["<Leader>pc"]  = { name = "Colorizer" },
  ["<Leader>pg"]  = { name = "Markdown" },
  ["<Leader>s"]   = { name = "Search+" },
  ["<Leader>ss"]  = { name = "Telescope" },
  ["<Leader>si"]  = { name = "Search Function" },
  ["<Leader>sf"]  = { name = "Search File" },
  ["<Leader>sg"]  = { name = "Search Grep" },
  ["<Leader>sb"]  = { name = "Search Buffer" },
  ["<Leader>sh"]  = { name = "Search Help" },
  ["<Leader>so"]  = { name = "Search oldfile" },
  ["<Leader>sd"]  = { name = "Search diagnostics" },
  ["<Leader>l"]   = { name = "lsp+" },
  ["<Leader>ls"]  = { name = "SymbolsOutline"},
  ["<Leader>lt"]  = { name = "Trouble"},
  ["<Leader>d"]   = { name = "Debug+"},
  ["<Leader>ds"]  = { name = "Continue"},
  ["<Leader>dp"]  = { name = "Stop"},
  ["<Leader>dr"]  = { name = "Restart"},
  ["<Leader>db"]  = { name = "Breakpoint"},
  ["<Leader>dt"]  = { name = "Run To Cursor"},
  ["<Leader>dq"]  = { name = "Over"},
  ["<Leader>di"]  = { name = "Step Into"},
  ["<Leader>do"]  = { name = "Step Out"},
  ["<Leader>dw"]  = { name = "ChooseWin"},
  ["<Leader>t"]   = { name = "TreeSitter+"},
  ["<Leader>tr"]  = { name = "Smart Rename"},
  ["<Leader>t="]  = { name = "Indent File"},
  ["<Leader>w"]   = { name = "Choose Windows" },
  ["<Space>e"]   = { name = "Edit+"},
  ["<Space>ed"]  = { name = "Delete Space"},
  ["<Space>b"]   = { name = "Buffer+"},
  ["<Space>bb"]  = { name = "Goto"},
  ["<Space>bd"]  = { name = "Delete"},
  ["<Space>bn"]  = { name = "Next"},
  ["<Space>bp"]  = { name = "Previous"},
  ["<Space>bs"]  = { name = "Buffers"},
  ["<Space>t"]   = { name = "Tab+"},
  ["<Space>te"]  = { name = "New"},
  ["<Space>tt"]  = { name = "Goto"},
  ["<Space>tq"]  = { name = "Close"},
  ["<Space>to"]  = { name = "Close Others"},
  ["<Space>tn"]  = { name = "Next"},
  ["<Space>tp"]  = { name = "Previous"},
  ["<Space>1"]   = { name = "Tab 1"},
  ["<Space>2"]   = { name = "Tab 2"},
  ["<Space>3"]   = { name = "Tab 3"},
  ["<Space>w"]   = { name = "Windows+"},
  ["<Space>ws"]  = { name = "Split Vertically"},
  ["<Space>wv"]  = { name = "Split"},
  ["<Space>ww"]  = { name = "Switch"},
  ["<Space>wx"]  = { name = "Swap Cur Next"},
  ["<Space>wT"]  = { name = "Cur Into NewTab"},
  ["<Space>wq"]  = { name = "Quit"},
  ["<Space>wh"]  = { name = "Go Left"},
  ["<Space>wj"]  = { name = "Go Down"},
  ["<Space>wk"]  = { name = "Go Up"},
  ["<Space>wl"]  = { name = "Go Right"},
  ["<Space>w|"]  = { name = "Width Max"},
  ["<Space>w="]  = { name = "Eq Height Width"},
  ["<Space>we"]  = { name = "Explore"},
  ["v"]  = { name = "Visual+"},
  ["vv"] = { name = "Visual Mode"},
  ["vb"] = { name = "Visual Block"},
  ["<C-w>"]   = { name = "Windows+"},
})
