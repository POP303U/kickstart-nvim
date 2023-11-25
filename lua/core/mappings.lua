vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>nh', ':nohl<CR>')
vim.keymap.set('n', 'x', '"_x')

vim.keymap.set('n', '<leader>+', '<c-a>')       -- increment selected number
vim.keymap.set('n', '<leader>-', '<c-x>')       -- decrement selected number
vim.keymap.set('n', '<leader>sv', '<c-w>v')     -- split window vertically
vim.keymap.set('n', '<leader>sh', '<c-w>s')     -- split window horizontally
vim.keymap.set('n', '<leader>se', '<c-w>=')     -- make split windows equal width (if changed)

vim.keymap.set('n', '<leader>sx', ':close<cr>') -- close current split window
vim.keymap.set('t', '<C-n>', "<C-\\><C-n>") -- Get into normal mode with current terminal

-- the best remap ever
vim.keymap.set('v', 'K', ":m '>-2<cr>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")

-- fixes this stupid issue where cursor goes to end of line with shift-j
vim.keymap.set('n', 'J', 'mzJ`z')

-- paste into system clipboard
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")

-- renaming good
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- neogit
vim.keymap.set('n', '<leader>g', ':Neogit kind=vsplit<CR>')

-- Lazy
vim.keymap.set('n', '<leader>l', ':Lazy<CR>')

-- Undotree
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)

