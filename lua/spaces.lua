local M = {}

local R = function(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true })
end

M.setup = function(opts)
  for k,v in pairs(opts) do
    if (type(v) == "table") then
      print("-----table------")
      for k,v in pairs(v) do
        print("key: ",k," value: ",v)
      end
    else print("key: ",k," value: ",v)
    end
  end
end

return M
