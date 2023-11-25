-- variable for conciseness
vim.opt.backup   = false
vim.opt.swapfile = false

-- check for windows and set terminal_emulator
vim.opt.undofile = true

if package.config:sub(1, 1) == "/" then -- doesn't work with windows lol
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

-- better searching
vim.opt.hlsearch       = false
vim.opt.incsearch      = true

-- numbers
vim.opt.number         = true
vim.opt.relativenumber = true

-- chonky cursor
vim.opt.guicursor      = ""

-- needed config
vim.opt.backspace      = '2'
vim.opt.showcmd        = true
vim.opt.laststatus     = 2
vim.opt.autowrite      = true
vim.opt.autoread       = true
vim.opt.colorcolumn    = "80"

-- tabs & indentation
vim.opt.tabstop        = 4
vim.opt.shiftwidth     = 4
vim.opt.softtabstop    = 4
vim.opt.expandtab      = true
vim.opt.autoindent     = true

-- line wrapping
vim.opt.wrap           = false

-- search settings
vim.opt.ignorecase     = true
vim.opt.smartcase      = true

-- set scrolling limit
vim.opt.scrolloff      = 8

-- blazingly fast update time
vim.opt.updatetime     = 50

-- appearance
vim.opt.background     = "dark"

-- split windows
vim.opt.splitright     = true
vim.opt.splitbelow     = true

-- indenting vim.opt
vim.opt.autoindent     = true -- auto indent
vim.opt.smartindent    = true -- smart indent
vim.opt.tabstop        = 4
vim.opt.shiftwidth     = 4
vim.opt.expandtab      = true

-- true color 24-bit (for terminals that support it)
vim.opt.termguicolors  = true

-- fix word detection
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_") -- probably unnecessary :)
