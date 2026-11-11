vim.keymap.set("n", "<leader>gs", function()
  vim.cmd("vertical Git")
  vim.cmd("vertical resize " .. math.min(80, math.floor(vim.o.columns * 0.35)))
end, { desc = "Fugitive status" })
