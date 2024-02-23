-------------
-- Neovide --
-------------
-- no support for nvim-qt it sucks don't use it
if vim.g.neovide then
    vim.opt.guifont = "CaskaydiaCove Nerd Font:h13"
    vim.g.remember_window_size = true
    vim.g.remember_window_position = true
    vim.g.neovide_cursor_animation_length = 0.05
    vim.g.neovide_cursor_vfx_mode = "torpedo"
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_scroll_animation_length = 0.2
    local alpha = function()
        return string.format("%x", math.floor(255 * vim.g.transparency or 0.75))
    end

    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.transparency = 0
    vim.g.neovide_transparency = 0.8
    vim.g.neovide_background_color = "#191724" .. alpha()
end
