vim.g.mapleader = " "

-- Move to buffer at left/h or right/l
vim.keymap.set("n", "<C-l>", vim.cmd.bnext)
vim.keymap.set("n", "<C-h>", vim.cmd.bprev)
-- Close current buffer
vim.keymap.set("n", "<leader>bd", vim.cmd.bd)

-- Run current Python script
vim.keymap.set("n", "<leader>r", ":!python %<CR>")

-- Nvim tree keymap
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true, noremap = true} )

-- Set of keymaps of netrw, a file explorer. Using nvim-tree instead
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
--[[ vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end

    -- edit new file
    bind('n', '%')

    -- rename file
    bind('r', 'R')

    -- Go to parent folder 
    bind('h', '-')

    -- Go to children
    bind('l', '<cr>')
  end
}) ]]
