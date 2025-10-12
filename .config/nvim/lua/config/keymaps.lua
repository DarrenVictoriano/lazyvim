-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local unmap = vim.keymap.del

-- Remove LazyVim's Better Up/Down keymaps
-- unmap({ "n", "x" }, "j")
-- unmap({ "n", "x" }, "<Down>")
-- unmap({ "n", "x" }, "k")
-- unmap({ "n", "x" }, "<Up>")

-- Remove LazyVim's Window Navigation keymaps
-- unmap("n", "<C-h>")
-- unmap("n", "<C-j>")
-- unmap("n", "<C-k>")
-- unmap("n", "<C-l>")

-- Remove LazyVim's Window Resize keymaps
-- unmap("n", "<C-Up>")
-- unmap("n", "<C-Down>")
-- unmap("n", "<C-Left>")
-- unmap("n", "<C-Right>")

-- Remove LazyVim's Move Line keymaps
-- unmap("n", "<A-j>")
-- unmap("n", "<A-k>")
-- unmap("i", "<A-j>")
-- unmap("i", "<A-k>")
-- unmap("v", "<A-j>")
-- unmap("v", "<A-k>")

-- Remove LazyVim's Buffer keymaps
-- unmap("n", "<S-h>")
-- unmap("n", "<S-l>")
-- unmap("n", "[b")
-- unmap("n", "]b")
-- unmap("n", "<leader>bb")
-- unmap("n", "<leader>`")
-- unmap("n", "<leader>bd")
-- unmap("n", "<leader>bo")
-- unmap("n", "<leader>bD")

-- Remove LazyVim's Escape enhancements
-- unmap({ "i", "n", "s" }, "<esc>")

-- Remove LazyVim's Redraw / Clear hlsearch / Diff Update
-- unmap("n", "<leader>ur")

-- Remove LazyVim's Better n/N search behavior
-- unmap("n", "n")
-- unmap("x", "n")
-- unmap("o", "n")
-- unmap("n", "N")
-- unmap("x", "N")
-- unmap("o", "N")

-- Remove LazyVim's Undo Breakpoints
-- unmap("i", ",")
-- unmap("i", ".")
-- unmap("i", ";")

-- Remove LazyVim's Save keymap
-- unmap({ "i", "x", "n", "s" }, "<C-s>")

-- Remove LazyVim's Keywordprg keymap
-- unmap("n", "<leader>K")

-- Remove LazyVim's Better Indent keymaps
-- unmap("v", "<")
-- unmap("v", ">")

-- Remove LazyVim's Commenting keymaps
-- unmap("n", "gco")
-- unmap("n", "gcO")

-- Remove LazyVim's Lazy command
-- unmap("n", "<leader>l")

-- Remove LazyVim's New File keymap
-- unmap("n", "<leader>fn")

-- Remove LazyVim's Location List keymap
-- unmap("n", "<leader>xl")

-- Remove LazyVim's Quickfix List keymaps
-- unmap("n", "<leader>xq")
-- unmap("n", "[q")
-- unmap("n", "]q")

-- Remove LazyVim's Format keymap
-- unmap({ "n", "v" }, "<leader>cf")

-- Remove LazyVim's Diagnostic keymaps
-- unmap("n", "<leader>cd")
-- unmap("n", "]d")
-- unmap("n", "[d")
-- unmap("n", "]e")
-- unmap("n", "[e")
-- unmap("n", "]w")
-- unmap("n", "[w")

-- Remove LazyVim's Toggle Option keymaps
-- unmap("n", "<leader>uf")
-- unmap("n", "<leader>uF")
-- unmap("n", "<leader>us")
-- unmap("n", "<leader>uw")
-- unmap("n", "<leader>uL")
-- unmap("n", "<leader>ud")
-- unmap("n", "<leader>ul")
-- unmap("n", "<leader>uc")
-- unmap("n", "<leader>uA")
-- unmap("n", "<leader>uT")
-- unmap("n", "<leader>ub")
-- unmap("n", "<leader>uD")
-- unmap("n", "<leader>ua")
-- unmap("n", "<leader>ug")
-- unmap("n", "<leader>uS")
-- unmap("n", "<leader>dpp")
-- unmap("n", "<leader>dph")
-- unmap("n", "<leader>uh") -- if applicable

-- Remove LazyVim's Lazygit keymaps
-- unmap("n", "<leader>gg")
-- unmap("n", "<leader>gG")
-- unmap("n", "<leader>gf")
-- unmap("n", "<leader>gl")
-- unmap("n", "<leader>gL")
-- unmap("n", "<leader>gb")
-- unmap({ "n", "x" }, "<leader>gB")
-- unmap({ "n", "x" }, "<leader>gY")

-- Remove LazyVim's Quit keymap
-- unmap("n", "<leader>qq")

-- Remove LazyVim's Inspect keymaps
-- unmap("n", "<leader>ui")
-- unmap("n", "<leader>uI")

-- Remove LazyVim's Changelog keymap
-- unmap("n", "<leader>L")

-- Remove LazyVim's Floating Terminal keymaps
-- unmap("n", "<leader>fT")
-- unmap("n", "<leader>ft")
-- unmap("n", "<c-/>")
-- unmap("n", "<c-_>")

-- Remove LazyVim's Terminal Hide keymaps
-- unmap("t", "<C-/>")
-- unmap("t", "<c-_>")

-- Remove LazyVim's Window keymaps
unmap("n", "<leader>-")
unmap("n", "<leader>|")
-- unmap("n", "<leader>wd")
-- unmap("n", "<leader>wm")
-- unmap("n", "<leader>uZ")
-- unmap("n", "<leader>uz")

-- Remove LazyVim's Tab keymaps
-- unmap("n", "<leader><tab>l")
-- unmap("n", "<leader><tab>o")
-- unmap("n", "<leader><tab>f")
-- unmap("n", "<leader><tab><tab>")
-- unmap("n", "<leader><tab>]")
-- unmap("n", "<leader><tab>d")
-- unmap("n", "<leader><tab>[")

-- Remove LazyVim's Snippet Jump keymaps (for < 0.11)
-- if vim.fn.has("nvim-0.11") == 0 then
--   unmap("s", "<Tab>")
--   unmap({ "i", "s" }, "<S-Tab>")
-- end

-- My Custom Keymaps

local map = vim.keymap.set

-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
-- map(
--   "n",
--   "<leader>ch",
--   "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
--   { desc = "Redraw / Clear hlsearch / Diff Update" }
-- )

-- diagnostic
-- map("n", "<leader>xd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

-- use jk to exit insert mode
map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Move by visual line if no count is given
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- use Enter instead of za to fold text
map("n", "<CR>", "za", { noremap = true, silent = true })

map("n", "x", '"_x', { desc = "Delete single character without yanking" })
map("x", "p", [["_dP]], { desc = "Paste without yanking" })

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

-- tab management
-- map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- map("n", "<leader>tx", "<cmd>bwipeout<CR>", { desc = "Close current tab" }) -- close current tab
-- map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- map("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- map("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- buffer management
-- map("n", "L", "<cmd>bnext<CR>", { desc = "Go to next buffer", noremap = true })
-- map("n", "H", "<cmd>bprevious<CR>", { desc = "Go to previous buffer", noremap = true })

-- scroll half screen and center
map("n", "<C-d>", "<C-d>zz", { desc = "Move down half screen" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up half screen" })

-- scroll one full screen and center
map("n", "<C-f>", "<C-f>zz", { desc = "Move down one full screen" })
map("n", "<C-b>", "<C-b>zz", { desc = "Move down one full screen" })

-- Search next/prev and center + open folds
map("n", "n", "nzzzv", { desc = "Search next and center" })
map("n", "N", "Nzzzv", { desc = "Search previous and center" })
