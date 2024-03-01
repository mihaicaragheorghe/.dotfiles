local setup, comment = pcall(require, "Comment")
if not setup then
    vim.notify("Could not load comment.nvim")
    return
end

comment.setup();
