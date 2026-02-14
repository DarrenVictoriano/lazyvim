-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- stylua: ignore start

-- Remove LazyVim's Window keymaps
local unmap = vim.keymap.del

unmap("n", "<leader>-")
unmap("n", "<leader>|")
unmap("n", "<leader>gb")
unmap("n", "<leader>gB")
unmap("n", "<leader>gl")
unmap("n", "<leader>gL")
unmap("n", "<leader>`")

-- My Custom Keymaps

local map = vim.keymap.set

-- use jk to exit insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Move by visual line if no count is given
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- use Enter instead of za to fold text
map("n", "<CR>", "za", { noremap = true, silent = true })

map("n", "x", '"_x', { desc = "Delete single character without yanking" })

-- window management
map("n", "<leader>w|", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>w-", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- map("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- map("n", "<leader>wd", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
-- map("n", "<leader>wx", "<cmd>bwipeout<CR>", { desc = "Close current buffer" }) -- close current split window

-- save and quit buffer
map("n", "<leader>ww", ":w<CR>", { desc = "Save Buffer" })
map("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit Buffer" })
-- map("n", "<leader>qq", ":wqa<CR>", { desc = "Save and Quit All" })

-- scroll half screen and center
map("n", "<C-d>", "<C-d>zz", { desc = "Move down half screen" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up half screen" })

-- scroll one full screen and center
map("n", "<C-f>", "<C-f>zz", { desc = "Move down one full screen" })
map("n", "<C-b>", "<C-b>zz", { desc = "Move down one full screen" })

-- Search next/prev and center + open folds
map("n", "n", "nzzzv", { desc = "Search next and center" })
map("n", "N", "Nzzzv", { desc = "Search previous and center" })

-- Git
map("n", "<leader>gl", function() Snacks.picker.git_log_line() end, { desc = "Git Log Line" })
map("n", "<leader>gL", function() Snacks.picker.git_log({ cwd = LazyVim.root.git() }) end, { desc = "Git Log" })
map({ "n", "x" }, "<leader>go", function() Snacks.gitbrowse() end, { desc = "Git Browse (open)" })
