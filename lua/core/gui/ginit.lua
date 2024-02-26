-------------
-- Neovide --
-------------
-- no support for nvim-qt it sucks don't use it
if vim.g.neovide then
    vim.opt.guifont = "CaskaydiaCove Nerd Font:h15"
    vim.g.remember_window_size = true
    vim.g.remember_window_position = true
    vim.g.neovide_cursor_animation_length = 0.05
    vim.g.neovide_cursor_vfx_mode = "torpedo"
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_scroll_animation_length = 0.2
    
    vim.g.neovide_padding_top = 10
    vim.g.neovide_padding_bottom = 10
    vim.g.neovide_padding_right = 10
    vim.g.neovide_padding_left = 10

    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.neovide_transparency = 1.0
    vim.g.transparency = 1.0
    vim.g.neovide_background_color = "#ff1117"
end
