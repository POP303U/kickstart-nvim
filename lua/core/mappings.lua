-- variable for conciseness
local keymap = vim.keymap
local current_dir = vim.fn.getcwd()

-- leader key
vim.g.mapleader = ' '

-- general keymaps
keymap.set('n', '<leader>nh', ':nohl<CR>')
keymap.set('n', 'x', '"_x')

keymap.set('n', '<leader>+', '<c-a>')       -- increment selected number
keymap.set('n', '<leader>-', '<c-x>')       -- decrement selected number

keymap.set('n', '<leader>sv', '<c-w>v')     -- split window vertically
keymap.set('n', '<leader>sh', '<c-w>s')     -- split window horizontally
keymap.set('n', '<leader>se', '<c-w>=')     -- make split windows equal width (if changed)
keymap.set('n', '<leader>sx', ':close<cr>') -- close current split window

-- NETRW
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- the best remap ever
keymap.set('v', 'K', ":m '>-2<cr>gv=gv")
keymap.set('v', 'J', ":m '>+1<cr>gv=gv")

-- fixes this stupid issue where cursor goes to end of line with shift-j
keymap.set('n', 'J', 'mzJ`z')

-- paste into system clipboard
keymap.set('n', '<leader>y', "\"+y")
keymap.set('v', '<leader>y', "\"+y")

-- renaming good
keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Plugins --

-- neogit
keymap.set('n', '<leader>ng', ':Neogit kind=vsplit<CR>')

-- Lazy
keymap.set('n', '<leader>l', ':Lazy<CR>')

-- ToggleTerm
keymap.set('n', '<leader>th', ':ToggleTerm size=10 dir=' .. current_dir .. ' direction=horizontal<CR>')
keymap.set('n', '<leader>tv', ':ToggleTerm size=40 dir=' .. current_dir .. ' direction=vertical<CR>')
keymap.set('n', '<leader>tf', ':ToggleTerm size=20 dir=' .. current_dir .. ' direction=float<CR>')

keymap.set('t', '<esc>', [[<C-\><C-n>]])
keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])

-- Undotree
keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)
