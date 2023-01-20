----------------------
-- all settings
----------------------
require "settings/keymaps"
require "settings/options"
require "settings/styles"
----------------------------------
-- all configurations for plugins
----------------------------------
require "plugins"
require "plugins/configs/cmp"
require "plugins/configs/nvim-treesitter"
require "plugins/configs/telescope"
require "plugins/configs/lastplace"
require "plugins/configs/gitsigns"
require "plugins/configs/lualine"
require "plugins/configs/whichkey"
require "plugins/configs/alpha-nvim"
require "plugins/configs/comment"
require "plugins/configs/feline"
require "plugins/configs/fterm"
-- require "plugins/configs/barbar"
require "plugins/configs/tree"
require "plugins/configs/todo"

--have bug
-- require "plugins/configs/neotags"
-- require "plugins/configs/oneterm"
require('leap').add_default_mappings()
-------------------------------------------
-- mason --> mason-lspconfig --> lspconfig 
-- must be setup in this order
-------------------------------------------
require "plugins/configs/mason"
require "plugins/configs/mason-lspconfig"
require "plugins/configs/lspconfig"
