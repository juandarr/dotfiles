-- Open git status
vim.keymap.set('n', "<leader>gs", vim.cmd.Git)
-- Commit changes
vim.keymap.set('n', "<leader>gc", ":Git commit<CR>")
-- Push commit
vim.keymap.set('n', "<leader>gp", ":Git push<CR>")
