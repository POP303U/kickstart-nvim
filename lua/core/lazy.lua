local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath, })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Icons
    'nvim-tree/nvim-web-devicons',

    -- Colorscheme --
    'rose-pine/neovim',
    'nvim-treesitter/nvim-treesitter',

    -- Speedy Explorers --
    'stevearc/oil.nvim',
    'theprimeagen/harpoon',

    -- Fuzzy Finder(s) --
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },

    -- LSP Config --
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },

    -- Git integration --
    'TimUntersberger/neogit',

    -- undotree --
    'mbbill/undotree',
}, opts)
