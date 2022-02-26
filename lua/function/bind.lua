-- 设置键位
local bind = {}
local set_keymap = vim.api.nvim_set_keymap

  function bind.set_map_lua(mode, keymap, rhs, functions, options)
    rhs = "<cmd>lua require('" .. rhs .. "')"
    if(functions ~= nil) then
      rhs = rhs .. '.' .. functions
    end
    for i = 1,#mode do
      local m = string.sub(mode,i,i)
      set_keymap(m,keymap,rhs, options)
    end
  end

 function bind.set_map(mode, keymap, rhs, options)
    for i = 1,#mode do
      local m = string.sub(mode,i,i)
      set_keymap(m, keymap, rhs, options)
    end
  end

return bind
