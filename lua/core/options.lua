-- variable for conciseness
local options    = vim.opt

options.backup   = false
options.swapfile = false

-- check for windows and set terminal_emulator
options.undofile = true

if package.config:sub(1, 1) == "/" then -- doesn't work with windows lol
    options.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

-- better searching
options.hlsearch       = false
options.incsearch      = true

-- numbers
options.number         = true
options.relativenumber = true

-- chonky cursor
options.guicursor      = ""

-- needed config
options.backspace      = '2'
options.showcmd        = true
options.laststatus     = 2
options.autowrite      = true
options.autoread       = true
options.colorcolumn    = "80"

-- tabs & indentation
options.tabstop        = 4
options.shiftwidth     = 4
options.softtabstop    = 4
options.expandtab      = true
options.autoindent     = true

-- line wrapping
options.wrap           = false

-- search settings
options.ignorecase     = true
options.smartcase      = true

-- set scrolling limit
options.scrolloff      = 8

-- blazingly fast update time
options.updatetime     = 50

-- appearance
options.background     = "dark"

-- split windows
options.splitright     = true
options.splitbelow     = true

-- indenting options
options.autoindent     = true -- auto indent
options.smartindent    = true -- smart indent
options.tabstop        = 4
options.shiftwidth     = 4
options.expandtab      = true

-- true color 24-bit (for terminals that support it)
options.termguicolors  = true

-- fix word detection
options.iskeyword:append("-")
options.iskeyword:append("_") -- probably unnecessary :)
