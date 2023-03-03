vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv", { desc = 'Move selection down' })

vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")
vim.keymap.set('n', 'n', "nzzv")
vim.keymap.set('n', 'N', "Nzzv")

vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste without overriding current register' })

vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end, { desc = 'Format' })

-- Plugins
-- -- Window Picker
vim.keymap.set("n", "<leader>v", function()
    print('Test from picker')
    local picked_window_id = require('window-picker').pick_window() or vim.api.nvim_get_current_win()
    print('picked window', picked_window_id)
    vim.api.nvim_set_current_win(picked_window_id)
end, { desc = 'Window picker' })

-- -- Telescope
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- -- Neo-tree
vim.keymap.set('n', '<leader>1', ':Neotree reveal toggle<cr>', { desc = 'Shows file tree' })
vim.keymap.set('n', '<leader>!', ':Neotree buffers toggle<cr>', { desc = 'Shows open buffers' })
vim.keymap.set('n', '<leader>2', ':Neotree git_status toggle<cr>', { desc = 'Shows git status' })

-- -- Undotree
vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle, { desc = 'UndotreeToggle' })

-- -- Fugitive
vim.keymap.set('n', '<leader>s2', vim.cmd.Git, { desc = 'Git Fugitive' })
