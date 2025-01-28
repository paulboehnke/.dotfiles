vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({"n", "v", "i"}, "<C-c>", "<Esc>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- start neorg
vim.keymap.set("n", "<leader>ns", "<cmd>Neorg index<CR>")
-- close neorg
vim.keymap.set("n", "<leader>nx", "<cmd>w<CR><cmd>Neorg return<CR>")


-- pass highlighted db query to dadbod 
function DBWithRegisterContents()
    local query = vim.fn.getreg('"')  -- Get the contents of the " register
    vim.cmd(':DB ' .. string.gsub(query, '\n', ' '))    -- Run the :DB query command with the query
end
-- Create the key mapping for <leader>db to call the function
vim.keymap.set('n', '<leader>db', '<cmd>lua DBWithRegisterContents()<cr>', { noremap = true })

vim.keymap.set('v', '/', "\"fy/\\V<C-R>f<CR>" )

-- search all files and load into quickfix list
vim.keymap.set('n', '<leader>pg', function()
  local search = vim.fn.input("rg > ")
  local pattern = vim.fn.input("Pattern > ", "**/*")
  vim.cmd("silent grep! " .. vim.fn.shellescape(search) .. " " .. pattern)
  vim.cmd("copen")
end)

