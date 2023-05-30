vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set

-- TELESCOPE
vim.keymap.set("n", "<leader>cc", "<cmd>:Telescope flutter commands<CR>")
vim.keymap.set("n", "<leader>lc", "<cmd>:lua require'telescope'.extensions.dap.commands{}<CR>")
vim.keymap.set("n", "<leader>lb", "<cmd>:lua require'telescope'.extensions.dap.list_breakpoints{}<CR>")

-- DADBOD UI
vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>dq", ":tabclose<cr>", {})

-- COMMANDS
vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>x", "<cmd>bw<CR>")
vim.keymap.set("n", "<leader>zt", "<cmd>tabnew %<CR>")
vim.keymap.set("n", "<leader>ww", "<cmd>:w<CR>")

vim.keymap.set("v", "<leader>y", '"+y<CR>')

-- JAVA
vim.keymap.set("n", "<leader>r", "<cmd>term gradle run<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>term gradle bootRun --debug-jvm<CR>")

-- DAP
map("n", "<leader>as", vim.diagnostic.setloclist)

map("n", "<leader>dc", function()
    require("dap").continue()
end)

map("n", "<leader>dt", function()
    require("dap").toggle_breakpoint()
end)

map("n", "<leader>dso", function()
    require("dap").step_over()
end)

map("n", "<leader>dsi", function()
    require("dap").step_into()
end)
