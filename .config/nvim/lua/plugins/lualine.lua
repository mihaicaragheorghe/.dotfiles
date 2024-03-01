local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("Could not load lualine")
    return
end

