local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')

local jumpable        = require('lsp.plugins.cmp_func').jumpable
local check_backspace = require('lsp.plugins.cmp_func').check_backspace
local is_emmet_active = require('lsp.plugins.cmp_func').is_emmet_active

-- cmp config
cmp.setup {
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
    keyword_length = 1,
  },
  window = { -- 补窗口边框
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  experimental = {
    ghost_text = true,
    native_menu = false,
  },
  mapping = {
    ["<Esc>"] = cmp.mapping.close(),            -- 关闭补全窗口
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif jumpable() then
        luasnip.jump(1)
      elseif check_backspace() then
        fallback()
      elseif is_emmet_active() then
        return vim.fn["cmp#complete"]()
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.confirm({select = true}) then
        if jumpable() then
          luasnip.jump(1)
        end
        return
      end

      if jumpable() then
        if not luasnip.jump(1) then
          fallback()
        end
      else
        fallback()
      end
    end),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'treesitter' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'orgmode'},
  },
  formatting = {
    format = lspkind.cmp_format({with_text = true, maxwidth = 50}), -- lspkind
  },
}

