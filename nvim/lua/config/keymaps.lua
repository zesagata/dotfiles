-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +8<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -8<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -8<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +8<cr>", { desc = "Increase Window Width" })

-- Auto saved
map("i", "<Esc>", "<Esc>:w<CR>", { noremap = true, silent = true })

map("n", "e", "b", { desc = "Move backward to start of word" })
map("n", "b", "e", { desc = "Move forward to end of word" })

map("n", "<leader>fg", "<cmd>Telescope live_grep search_dirs={'.'}<CR>", { noremap = true, silent = true })
