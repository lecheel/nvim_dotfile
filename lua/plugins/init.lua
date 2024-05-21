local fn = vim.fn
-- Automatically install packer on initial startup
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  Packer_Bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "---------------------------------------------------------"
  print "Press Enter to install packer and plugins."
  print "After install -- close and reopen Neovim to load configs!"
  print "---------------------------------------------------------"
  vim.cmd [[packadd packer.nvim]]
end

if fn.executable("rg") > 0 then
  vim.o.grepprg = "rg --hidden --glob '!.git' --no-heading --smart-case --vimgrep --follow $*"
  vim.opt.grepformat = vim.opt.grepformat ^ { "%f:%l:%c:%m" }
  vim.cmd [[command! -bar -nargs=1 Grep silent grep <q-args> | redraw!]]
  vim.cmd [[command! -bar -nargs=0 Ag silent grep <cword> | redraw!|cw]]
end


-- Use a protected call
local present, packer = pcall(require, "packer")

if not present then
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'             -- Packer manages itself 
  use 'nvim-lua/plenary.nvim'              -- Avoids callbacks, used by other plugins
  use 'nvim-lua/popup.nvim'                -- Popup for other plugins
  use 'nvim-treesitter/nvim-treesitter'    -- Language parsing completion engine
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use "williamboman/mason.nvim"            -- UI for fetching/downloading LSPs
  use "williamboman/mason-lspconfig.nvim"  -- Bridges mason and lspconfig
  use 'neovim/nvim-lspconfig'              -- Language server protocol implementation
  use 'hrsh7th/nvim-cmp'                   -- Vim completion engine
  use 'L3MON4D3/LuaSnip'                   -- More snippets
  use 'saadparwaiz1/cmp_luasnip'           -- Even more snippets
  use 'hrsh7th/cmp-nvim-lsp'               -- Cmp's own LSP
  use 'hrsh7th/cmp-buffer'                 -- Cmp source for buffer words
  use 'hrsh7th/cmp-path'                   -- Cmp source for path words
  use 'nvim-telescope/telescope.nvim'      -- Finder, requires fzf and ripgrep
  use 'gruvbox-community/gruvbox'          -- Schmexy colors
  use 'tanvirtin/monokai.nvim'             -- monokai colors
  use 'kyazdani42/nvim-web-devicons'       -- icons  
  use 'ethanholz/nvim-lastplace'           -- lastplace viminfo
  use 'lewis6991/gitsigns.nvim'            -- gitsigns gutter
  use 'nvim-lualine/lualine.nvim'          -- lualine for NERD font
  use 'folke/which-key.nvim'               -- which-key      
  use 'goolord/alpha-nvim'                 -- nvim spash logo
  use 'terrortylor/nvim-comment'           -- comment
  use 'famiu/feline.nvim'                  -- status line
  use 'numToStr/FTerm.nvim'                -- float terminal     
  use 'c0r73x/neotags.lua'                 -- neotags
  -- use 'ggandor/leap.nvim'                  -- leap motion
  use 'phaazon/hop.nvim'                   -- hop motion 
  -- use 'nvim-neo-tree/neo-tree.nvim'        -- neo-tree 
  use 'MunifTanjim/nui.nvim'               -- UI library for neoVim
  use 'folke/todo-comments.nvim'           -- TODO
  use 'lukas-reineke/indent-blankline.nvim' -- Indent blankline for TAB 
  use 'kylechui/nvim-surround'              -- cs'"
  use 'akinsho/bufferline.nvim'             -- bufferline TAB
  use 'Shatur/neovim-session-manager'       -- SessionManager
  use 'vimwiki/vimwiki'                     -- vimWiki
  use 'akinsho/toggleterm.nvim'             -- Toggleterm
  use 'duane9/nvim-rg'                      -- ripgrep
  use 'gerazov/toggle-bool.nvim'            -- toggle json
  use 'renerocksai/telekasten.nvim'         -- calendar
  use 'Exafunction/codeium.vim'             -- codeium
  use 'jackMort/ChatGPT.nvim'               -- ChatGPT
  -- use 'boltlessengineer/bufterm.nvim'       -- another buffer Terminal
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if Packer_Bootstrap then
    require('packer').sync()
  end
end)

