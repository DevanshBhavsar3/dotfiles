-- Curly Braces override for solarized light
vim.api.nvim_set_hl(0, "MatchParen", {
    fg = "#808080",
    bg = "#b4c2c2",
    bold = true,
})

local function is_dark_mode()
    local handle = io.popen(
        "gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null"
    )

    if not handle then
        return true
    end

    local result = handle:read("*a")
    handle:close()

    return result:match("dark") ~= nil
end

if is_dark_mode() then
    vim.o.background = "dark"
    vim.cmd.colorscheme("kanagawa")
else
    vim.o.background = "light"
    vim.cmd.colorscheme("base16-solarized-light")
end
