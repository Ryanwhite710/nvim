-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.commands")


-- Set background color and transparency for all buffers
vim.opt.background = "dark" -- Or "light" if preferred

-- Apply transparency to default highlights
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight CursorLine guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
]])

-- Ensure transparency for all buffers dynamically
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "TermOpen", "TermEnter" }, {
  callback = function()
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight SignColumn guibg=NONE ctermbg=NONE
      highlight LineNr guibg=NONE ctermbg=NONE
      highlight FloatBorder guibg=NONE ctermbg=NONE
      highlight NormalFloat guibg=NONE ctermbg=NONE
    ]])
  end,
})

-- Apply transparency specifically for terminals
vim.api.nvim_create_autocmd({ "TermOpen", "TermEnter" }, {
  callback = function()
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      set winblend=10
    ]])
  end,
})

-- Reapply transparency when switching buffers
vim.api.nvim_create_autocmd({ "BufWinEnter", "BufReadPost", "FocusGained" }, {
  callback = function()
    vim.cmd([[
      highlight Normal guibg=NONE ctermbg=NONE
      highlight NonText guibg=NONE ctermbg=NONE
    ]])
  end,
})

-- Ensure floating windows like Telescope have transparency
vim.cmd([[
  set winblend=15
  set pumblend=15
]])

-- LSP floating window transparency
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
  focusable = false,
  style = "minimal",
})
