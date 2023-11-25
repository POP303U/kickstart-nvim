-- variable for conciseness
vim.options.backup   = false
vim.options.swapfile = false

-- check for windows and set terminal_emulator
vim.options.undofile = true

if package.config:sub(1, 1) == "/" then -- doesn't work with windows lol
    vim.options.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

-- better searching
vim.options.hlsearch       = false
vim.options.incsearch      = true

-- numbers
vim.options.number         = true
vim.options.relativenumber = true

-- chonky cursor
vim.options.guicursor      = ""

-- needed config
vim.options.backspace      = '2'
vim.options.showcmd        = true
vim.options.laststatus     = 2
vim.options.autowrite      = true
vim.options.autoread       = true
vim.options.colorcolumn    = "80"

-- tabs & indentation
vim.options.tabstop        = 4
vim.options.shiftwidth     = 4
vim.options.softtabstop    = 4
vim.options.expandtab      = true
vim.options.autoindent     = true

-- line wrapping
vim.options.wrap           = false

-- search settings
vim.options.ignorecase     = true
vim.options.smartcase      = true

-- set scrolling limit
vim.options.scrolloff      = 8

-- blazingly fast update time
vim.options.updatetime     = 50

-- appearance
vim.options.background     = "dark"

-- split windows
vim.options.splitright     = true
vim.options.splitbelow     = true

-- indenting vim.options
vim.options.autoindent     = true -- auto indent
vim.options.smartindent    = true -- smart indent
vim.options.tabstop        = 4
vim.options.shiftwidth     = 4
vim.options.expandtab      = true

-- true color 24-bit (for terminals that support it)
vim.options.termguicolors  = true

-- fix word detection
vim.options.iskeyword:append("-")
vim.options.iskeyword:append("_") -- probably unnecessary :)
