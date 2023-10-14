local set = vim.opt
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = ' '
vim.notify = require('notify')


set.relativenumber = true
set.number = true
set.list = true
set.shiftwidth = 2
set.tabstop = 2
set.expandtab = true
set.smarttab = true
set.autoindent = true
set.cursorline = true
set.winbar = "%=%m %f"
-- set.statuscolumn = "%l %r"
set.statuscolumn = '%@SignCb@%s%=%T%@NumCb@%r %l│%T'

set.swapfile = false
set.hlsearch = true
set.incsearch = true
set.ignorecase = true

set.wrap = true
set.scrolloff = 5
set.fileencoding = 'UTF-8'
set.showmatch = true
set.hidden = true

set.termguicolors = true
set.background = 'dark'
set.syntax = 'enable'

--creating buffer:
-- map('n', '<leader>t', ":enew<CR>", opts) --  creating a new buffer

--buffer navigation:-
map('n', '<leader>h', ":bp<CR>", opts) --previous tab
map('n', '<leader>l', ":bn<CR>", opts) --next tab
map('n', 'cz', ":bd<CR>", opts)        --close the tab
map('n', '<leader>z', ":w<CR>", opts)  --close the tab

--for opening with explore tab:-
-- map('n', '<leader>b', ':Explore<CR>', opts)
map('n', '<leader>b', ':NeoTreeRevealToggle<CR>', opts)

-- vim.cmd [[colorscheme NeoSolarized]]
-- vim.cmd [[colorscheme tokyonight-storm]]
vim.cmd [[colorscheme onedark]]
-- vim.cmd [[colorscheme codedark]]

--transparent on any colorscheme
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" }) --to transparent entire windows until end
--
-- terminal settings:-
map("n", "<C-t>", ":terminal <CR>", opts)
map("t", "<Esc>", "<c-\\><c-n>", opts)

--split window switcher
map('n', '<C-l>', "<C-w>l<CR>", opts) --move to left
map('n', '<C-h>', "<C-w>h<CR>", opts) --move to right
map('n', '<C-j>', "<C-w>j<CR>", opts) --move to down
map('n', '<C-k>', "<C-w>k<CR>", opts) --move to up

map('n', "H", "^", opts)
map('n', "L", "$", opts)
--to make cursor blink:-
-- vim.cmd [[set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
--   \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
--   \,sm:block-blinkwait175-blinkoff150-blinkon175]]         --to set currsor blink effect
-- vim.cmd [[ highlight CursorLineNr gui=bold guifg='white']] --to customize current line


--snippets
map('n', ',html', ':-1read ~/.config/nvim/lua/ownSnippets/index.html<CR>', opts)
map('n', ',css', ':-1read ~/.config/nvim/lua/ownSnippets/style.css<CR>', opts)

--search down into subfolders
--provides ta-completion for all file-realted tasks
set.path = '**'

--display all matching files when we tab complete
--
set.wildmenu = true

--debugger dap
map('n', "<leader>db", ":DapToggleBreakpoint<CR>", opts)
map('n', "<leader>dc", ":DapContinue<CR>", opts)
map('n', "<leader>dr", ":DapToggleRepl<CR>", opts)
map('n', "<leader>dt", ":DapTerminate<CR>", opts)
map('n', "<leader>di", ":DapStepInto<CR>", opts)
map('n', "<leader>do", ":DapStepOut<CR>", opts)
map('n', "<leader>dO", ":DapStepOver<CR>", opts)

--debugger dap UI
--
vim.keymap.set('n', '<leader>du', function() require('dapui').toggle() end)
vim.keymap.set('n', '<leader>de', function() require('dapui').eval() end)
