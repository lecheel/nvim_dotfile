require("hop").setup({
    keys = 'etovxqpdygfblzhckisuran',
    vim.api.nvim_set_keymap('n','s', "<CMD>HopChar2<CR>", {noremap=true}),
    vim.api.nvim_set_keymap('n','S', "<CMD>HopChar1<CR>", {noremap=true})
})
