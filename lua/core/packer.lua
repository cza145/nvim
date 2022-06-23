-- 加载路径
local global = require('core.global')
-- 检查packer是否已安装
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])
-- 若packer不存在则安装packer
if not packer_exists then
  if vim.fn.input("Install packer.nvim? (y)") ~= "y" then
    return
  end
  vim.fn.mkdir(global.directory, 'p')
  -- git packer
  local git_clone_cmd = vim.fn.system(string.format(
  'git clone --depth 1 %s %s',
  'https://github.com/wbthomason/packer.nvim',
  global.directory .. 'packer.nvim'
  ))
  print(git_clone_cmd)
  print("Installing packer.nvim...")
  return
end
