local func = {}

  -- set map
  function func.set_map(mode, keymap, rhs, options)
    for i = 1,#mode do
      local m = string.sub(mode,i,i)
      vim.api.nvim_set_keymap(m, keymap, rhs, options)
    end
  end

return func
