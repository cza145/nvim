local cmp   = require "cmp"
local global = require('core.global')
local luasnip = require('luasnip')
local lspkind = require('lspkind')
local cmp_setting = require(global.cmp_setting)


---------- cmp
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
    keyword_length = 2,
  },
  experimental = {
    ghost_text = true,
    native_menu = false,
  },
  mapping = {
    ["<Esc>"]     = cmp.mapping.close(),            -- 关闭补全窗口
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.confirm(cmp.confirm_opts) then
        if cmp_setting.jumpable() then
          luasnip.jump(1)
        end
        return
      end

      if cmp_setting.jumpable() then
        if not luasnip.jump(1) then
          fallback()
        end
      else
        fallback()
      end
    end),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif cmp_setting.jumpable() then
        luasnip.jump(1)
      elseif cmp_setting.check_backspace() then
        fallback()
      elseif cmp_setting.is_emmet_active() then
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
      elseif cmp_setting.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {
      "i",
      "s",
    }),
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
