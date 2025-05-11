require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    }
  })

vim.cmd.colorscheme "catppuccin"

vim.o.background = "dark"
