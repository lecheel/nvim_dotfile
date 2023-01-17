local wk = require("which-key")
wk.register({
  f = {
    name = "Find",
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    o = { "<cmd>Telescope oldfiles<cr>", "Old Files" },
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    c = { "<cmd>Telescope commands<cr>", "Commands" },
    r = { "<cmd>Telescope file_browser<cr>", "Browser" },
    w = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Current Buffer" },
  }
})
