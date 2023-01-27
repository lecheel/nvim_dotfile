require("nnn").setup({
    vim.api.nvim_set_keymap("n", "<C-e>", "<CMD>:NnnPicker<CR>", { noremap = true }),
    vim.api.nvim_set_keymap("i", "<C-e>", "<CMD>:NnnPicker<CR>", { noremap = true }),
})
