require("neo-tree").setup({
    close_if_last_window = false,
    vim.api.nvim_set_keymap("n", "<F1>", ":NeoTreeShowToggle<CR>", {noremap = true}),
    vim.api.nvim_set_keymap("i", "<F1>", "<CMD>:NeoTreeShowToggle<CR>", {noremap = true})
-- vim.api.nvim_set_keymap("n", "<M-e>", ":NeoTreeFloat<CR>", {noremap = true})
})

