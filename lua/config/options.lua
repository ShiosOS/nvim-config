-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.opt.fixendofline = false
vim.opt.endofline = false
vim.opt.fileformat = "dos"
vim.opt.fileformats = { "dos", "unix" }

local dracula_pro_path = vim.fn.stdpath("data") .. "/site/pack/themes/start/dracula_pro"
if (vim.uv or vim.loop).fs_stat(dracula_pro_path) then
  vim.opt.rtp:prepend(dracula_pro_path)
end
