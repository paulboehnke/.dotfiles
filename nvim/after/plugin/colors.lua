require('github-theme').setup({})

vim.cmd.colorscheme "github_dark_high_contrast"
for _, g in ipairs({ "Normal", "NormalNC", "NormalFloat", "SignColumn", "EndOfBuffer" }) do
  vim.api.nvim_set_hl(0, g, { bg = "none" })
end
