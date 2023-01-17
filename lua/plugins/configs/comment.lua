require('nvim_comment').setup(
  {
    vim.api.nvim_set_keymap("n", "<F2>", "<CMD>:CommentToggle<CR>j", { noremap = true }),
    vim.api.nvim_set_keymap("i", "<F2>", "<CMD>:CommentToggle<CR>", { noremap = true }),
    marker_padding = false
  }
)
