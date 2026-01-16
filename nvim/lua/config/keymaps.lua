-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "d", '"_d')

vim.keymap.set("n", "<Tab>", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

-- -- Open file/url under cursor using xdg-open
-- vim.keymap.set("n", "gx", function()
--   require("custom.custom_gx").open_url_from_picker()
-- end, { desc = "Open a URL from the current buffer" })
--
-- vim.keymap.set("n", "g?", function()
--   require("custom.custom_gx").open_helpful_docs()
-- end, { desc = "Open helpful docs" })
--

-- Disabled Keymaps
vim.keymap.set("n", "q:", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("n", "q/", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("n", "q?", "<Nop>", { noremap = true, silent = true })

-- Treewalker
-- movement
vim.keymap.set({ "n", "v" }, "<C-k>", "<cmd>Treewalker Up<cr>", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-j>", "<cmd>Treewalker Down<cr>", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-h>", "<cmd>Treewalker Left<cr>", { silent = true })
vim.keymap.set({ "n", "v" }, "<C-l>", "<cmd>Treewalker Right<cr>", { silent = true })

-- swapping
vim.keymap.set("n", "<C-S-k>", "<cmd>Treewalker SwapUp<cr>", { silent = true })

vim.keymap.set("n", "<C-S-j>", "<cmd>Treewalker SwapDown<cr>", { silent = true })
vim.keymap.set("n", "<C-S-h>", "<cmd>Treewalker SwapLeft<cr>", { silent = true })
vim.keymap.set("n", "<C-S-l>", "<cmd>Treewalker SwapRight<cr>", { silent = true })
-- vim.keymap.set("n", "<Tab>", ":EagleWin<CR>", { noremap = true, silent = true })
