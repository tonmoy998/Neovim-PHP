-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local opts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("i", "jj", "<ESC>", opts)
keymap("i", "kk", "<ESC>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- keymap("n", "<A-s>", ":tab term live-server<CR>", opts) -- OPEN TERMINAL IN THE NEW TAB
keymap("n", "<C-q>", ":q!<CR>", opts)
keymap("n", "<C-d>", ":bd!<CR>", opts)
keymap("n", "<C-s>", ":w!<CR>", opts)
keymap("n", "<c-t>", ":terminal<CR>", opts)
keymap("n", "<leader>E", ":Ranger<CR>", opts)
keymap("n", "<leader>e", ":Neotree toggle <CR>", opts)
keymap("n", "<leader>m", ":Telescope media_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
-- keymap("n", "<C-f>", ":Neoformat<CR>", opts)
keymap("n", "<leader>c", ":VCoolor<CR>", opts)
keymap("n", "<leader>fc", ":Telescope colorscheme<CR>", opts)
keymap("n", "<leader>d", ":DBUIToggle<CR>", opts)
-- keymap("n", "<C-S>", ":SudaWrite<CR>", opts)
