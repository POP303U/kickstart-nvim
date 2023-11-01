-------------
-- Nvim-qt --
-------------

if vim.g.GuiLoaded then
    local font_name = "JetBrainsMono Nerd Font"
    local font_size = 11
    local not_transparent = false

    local function toggle_transparency()
        not_transparent = not not_transparent
        if not_transparent then
            vim.cmd("GuiWindowOpacity " .. (0.9))
        else
            vim.cmd("GuiWindowOpacity " .. (1.0))
        end
    end

    vim.keymap.set("n", "<F10>", toggle_transparency, { silent = true })

    local function toggle_fullscreen()
        if vim.g.GuiWindowFullScreen == 0 then
            vim.cmd("call GuiWindowFullScreen(" .. 1 .. ")")
        else
            vim.cmd("call GuiWindowFullScreen(" .. 0 .. ")")
        end
    end

    vim.keymap.set("n", "<F11>", toggle_fullscreen, { silent = true })

    vim.cmd [[
  GuiTabline 0
  GuiPopupmenu 0
  ]]
    vim.cmd("GuiFont! " .. font_name .. ":h" .. font_size)
end

-------------
-- Neovide --
-------------

if vim.g.neovide then
    local alpha = function()
        return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.neovide_transparency = 0.0
    vim.g.transparency = 0.8
    vim.g.neovide_background_color = "#0f1117" .. alpha()

    print("Hello")
    print("Hello")
    print("Hello")
    print("Hello")
    print("Hello")
    print("Hello")
end
