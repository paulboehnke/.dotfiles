-- set up completion 
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<C-j>'] = cmp.mapping.select_next_item(),
    ['<C-k>'] = cmp.mapping.select_prev_item(),
  },
  sources = {
    { name = 'nvim_lsp' },
  },
})

-- Capabilities for all LSPs
local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      client.server_capabilities = vim.tbl_deep_extend(
        "force",
        client.server_capabilities or {},
        capabilities
      )
    end
  end,
})

-- start language servers
vim.lsp.enable({'luals', 'ruff', 'pyright'})


-- set up supermaven
require("supermaven-nvim").setup({
  keymaps = {
    accept_suggestion = "<Tab>",
    clear_suggestion = "<C-]>",
    accept_word = "<C-l>",
  },
  ignore_filetypes = { "txt", }, -- might still send these to server just avoids suggerstions
  log_level = "info", -- set to "off" to disable logging completely
  disable_inline_completion = false, -- disables inline completion for use with cmp
  disable_keymaps = false, -- disables built in keymaps for more manual control
  condition = function()
    return true
  end -- disables supermaven by default, manually need to start it with :SupermavenStart
  -- avoids supermaven to run everytime you open vim
})
