local opts = { noremap = true, silent = true }

-- Shorten keymap nvim call
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
--keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes:
--   Normal       = "n"
--   Insert       = "i"
--   Visual       = "v"
--   Visual_Block = "x"
--   Terminal     = "t"
--   Command      = "c"

keymap("n", "<leader>'", "<CMD>Rg<CR>", opts)
keymap("n", "]q", ":cn<CR>", opts)
keymap("n", "[q", ":cp<CR>", opts)

keymap("n", "<leader>ff", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<leader>rg", "<CMD>Telescope live_grep<CR>", opts)

keymap("i", "<F3>", "<CMD>:cn<CR>", opts)
keymap("n", "<F3>", ":cn<CR>", opts)

keymap("i", "<F15>", "<CMD>:cp<CR>", opts)
keymap("n", "<F15>", ":cp<CR>", opts)

keymap("i", "<F7>", "<CMD>%", opts)
keymap("n", "<F7>", "%", opts)

keymap("i", "<M-w>", "<CMD>:w!<CR>", opts)
keymap("n", "<M-w>", ":w!<CR>", opts)

keymap("i", "<M-q>", "<CMD>:q!<CR>", opts)
keymap("n", "<M-q>", "<CMD>:q!<CR>", opts)

keymap("i", "<M-d>", "<ESC>dd<CR>i", opts)
keymap("n", "<M-d>", "dd", opts)

keymap("i", "<M-b>", "<ESC>:Telescope buffers<CR>", opts)
keymap("n", "<M-b>", ":Telescope buffers<CR>", opts)

keymap("i", "<C-b>", "<ESC>:Telescope oldfiles<CR>", opts)
keymap("n", "<C-b>", ":Telescope oldfiles<CR>", opts)

keymap("n", "<M-->", ":bp<CR>", opts)
keymap("n", "<M-=>", ":bn<CR>", opts)

-- keymap('i', '<M-e>', '<Esc>:edit %p:h<CR>', opts)
-- keymap('n', '<M-e>', ':edit %:p:h<CR>',opts)

keymap('i', '<M-e>', '<Esc>:Telescope find_files<CR>', opts)
keymap('n', '<M-e>', ':Telescope find_files<CR>',opts)

keymap('i', '<M-x>', '<Esc>:bd<CR>', opts)
keymap('n', '<M-x>', ':bd<CR>',opts)

keymap('n', '<Tab>', '<C-W>w', opts)

keymap('i', '<C-x>0', '<Esc><C-W>q', opts)
keymap('n', '<C-x>0', '<C-W>q', opts)

keymap('i', '<C-x>1', '<Esc>:only<CR>', opts)
keymap('n', '<C-x>1', ':only<CR>', opts)

keymap('n', 'k', ':Ag<CR>', opts)

-- try these out in normal mode!
-- make sure you have fzf and ripgrep installed.
