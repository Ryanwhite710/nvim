-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Bufferline mappings
vim.api.nvim_set_keymap(
  "n",
  "<leader>vt",
  ":lcd %:p:h<CR>:vsplit<CR>:terminal<CR>:wincmd L<CR>:vertical resize 70<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>tt", ":terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "jj", "<C-\\><C-n>", { noremap = true, silent = true })

-- Navigation and utility mappings
vim.api.nvim_set_keymap("n", "<leader>;", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "*", "*zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "#", "#zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g*", "g*zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "g#", "g#zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cd", ":lcd %:p:h<CR>", { noremap = true, silent = true })

-- source file
vim.api.nvim_set_keymap("n", "<leader><space>x", "<cmd>source %<CR>", { noremap = true, silent = true })

vim.keymap.set("v", "gsa", function()
  local open = vim.fn.input("Enter opening char: ")
  local close = vim.fn.input("Enter closing char: ")
  -- Escape magic characters if needed
  open = vim.fn.escape(open, "\\/.*$^~[]")
  close = vim.fn.escape(close, "\\/.*$^~[]")
  vim.cmd([[silent '<,'>s/\%V\(.*\)/]] .. open .. [[\1]] .. close .. [[/]])
end, { noremap = true, silent = true })
