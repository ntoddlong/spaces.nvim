local M = {}

local R = function(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true })
end

M.setup = function(opts)
  print("hey")
  for k,v in pairs(opts) do
    if (type(v) == "table" and k == "mappings") then
      for mode,maps in pairs(v) do
        for lhs,rhs in pairs(maps) do
          print(mode)
          print(lhs)
          print(rhs)
          R(mode, lhs, rhs)
        end
      end
    end
    if (type(v) == "table") then
      print("hey")
      print("key: ",k)
      for k,v in pairs(v) do
        print("key: ",k," value: ",v)
      end
    else print("key: ",k," value: ",v)
    end
  end
end

return M
