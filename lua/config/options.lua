-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set the minimum amount of lines from the bottom, including the terminal
---@diagnostic disable: undefined-global
-- Set scrolloff globally
vim.opt.scrolloff = 30

-- Ensure scrolloff is set for every buffer/window when entered
vim.api.nvim_create_autocmd({ "BufWinEnter", "TermOpen", "WinEnter" }, {
  pattern = "*",
  callback = function()
    vim.opt_local.scrolloff = 30
  end,
})

vim.opt.equalalways = false

vim.g.root_spec = { "cwd" }
