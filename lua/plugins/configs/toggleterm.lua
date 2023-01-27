require("toggleterm").setup({
    vim.keymap.set('n', '<F9>', '<CMD>ToggleTerm<CR>'),
    vim.keymap.set('i', '<F9>', '<CMD>ToggleTerm<CR>'),
    vim.keymap.set('t', '<F9>', [[<C-\><C-n>]])

})

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "single",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>gl", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<F10>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
