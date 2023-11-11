local builtin = require('telescope.builtin')
local keymap = vim.keymap

require('telescope').setup({
    defaults = {
        hidden = true,
        vimgrep_arguments = {
            'rg',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
        },
    },
})

-- telescope (sadly can't go into remap.lua for complexity reasons)
keymap.set('n', '<Space>ff', builtin.find_files, {})
keymap.set('n', '<Space>fo', builtin.oldfiles, {})
keymap.set('n', '<Space>fg', builtin.live_grep, {})
keymap.set('n', '<Space>fh', builtin.help_tags, {})
