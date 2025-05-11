-- set up completion 
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
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

