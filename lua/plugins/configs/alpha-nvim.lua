-----------------------------------------------------------
-- Dashboard configuration file
-----------------------------------------------------------

-- Plugin: alpha-nvim
-- url: https://github.com/goolord/alpha-nvim

-- For configuration examples see: https://github.com/goolord/alpha-nvim/discussions/16

local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require('alpha.themes.dashboard')

-- Footer
local function footer()
  local version = vim.version()
  local print_version = "v" .. version.major .. '.' .. version.minor .. '.' .. version.patch
  local datetime = os.date('%Y/%m/%d %H:%M')

  return print_version .. ' ' .. datetime
end

-- Banner
local banner0= {
   [[ _    __     ___ __  __   ____   ___ ____  _____]],
   [[| | __\ \   / (_)  \/  | |___ \ / _ \___ \|___ / ]],
   [[| |/ _ \ \ / /| | |\/| |   __) | | | |__) | |_ \ ]],
   [[| |  __/\ V / | | |  | |  / __/| |_| / __/ ___) |]],
   [[|_|\___| \_/  |_|_|  |_| |_____|\___/_____|____/]],
}

local banner = {

  [[================================================.]],
  [[     .-.   .-.     .--.                         |]],
  [[    | OO| | OO|   / _.-' .-.   .-.  .-.   .''.  |]],
  [[    |   | |   |   \  '-. '-'   '-'  '-'   '..'  |]],
  [[    '^^^' '^^^'    '--'                         |]],
  [[===============.........================.  .-.  |]],
  [[ M-q Quit     l/L git gutter next/prev  |  '-'  |]],
  [[ F1  NeoTree  F2  Comment               |       |]],
  [[ F3  QuickFix F4  Hunk preview          |  .-.  |]],
  [[ F7  Match {} F8  Rg                    |  '-'  |]],
  [[ F9  Fterm sh F10 Lazygit            |       |]],
  [[==============='       '================'       |]],
}

dashboard.section.header.val = banner

-- Menu
dashboard.section.buttons.val = {
  dashboard.button('e', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button("r", "  Last Session  ",":SessionManager load_last_session<CR>"),
  dashboard.button("m", "󰗎  MRU           ",":Telescope oldfiles<CR>"),
  dashboard.button('s', '  Settings', ':e $HOME/.config/nvim/lua/plugins/init.lua<CR>'),
  dashboard.button('w', '  VimWIKI       ',':VimwikiIndex<CR>'),
  dashboard.button('q', '  Quit', ':qa<CR>'),
  -- dashboard.button('f', '  Find file', ':e .<CR>'),
  -- dashboard.button('u', '  Update plugins', ':PackerUpdate<CR>'),
}

dashboard.section.footer.val = footer()

alpha.setup(dashboard.config)
-- alpha.setup(require'alpha.themes.startify'.config)
