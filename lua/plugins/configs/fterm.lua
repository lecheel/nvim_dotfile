require('FTerm').setup({
    dimensions  = {
      ft = "gitui",
      cmd = "bash",
        height = 0.9,
        width = 0.9,
    },
})

-- Example keybindings have BUG here fixme
vim.keymap.set('n', '<F9>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<F9>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
