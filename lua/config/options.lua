-- UI
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.wrap = true
vim.opt.cursorline = true

-- Clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

