vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.rb", "*.py", "*.html",  "*.scss", "*.ts" },
    callback = function()
        local save_cursor = vim.api.nvim_win_get_cursor(0)
        vim.cmd("%s/\\s\\+$//e")
        vim.api.nvim_win_set_cursor(0, save_cursor)
    end,
})
