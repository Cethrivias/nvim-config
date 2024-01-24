return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require('neo-tree').setup()

        vim.keymap.set('n', '<leader>3', function()
            local path = vim.fn.expand '%:p'
            local readable = vim.fn.filereadable(path)
            print(path .. readable)
        end, { desc = 'Show file tree', expr = true })
        vim.keymap.set('n', '<leader>1', function()
            local path = vim.fn.expand '%:p'
            if vim.fn.filereadable(path) == 0 then
                return ':Neotree toggle<cr>'
            else
                return ':Neotree toggle reveal_file=' .. path .. '<cr>'
            end
        end, { desc = 'Show file tree', expr = true })
        vim.keymap.set('n', '<leader>2', function()
            local path = vim.fn.expand '%:p'
            if vim.fn.filereadable(path) == 0 then
                return ':Neotree position=current<cr>'
            else
                return ':Neotree position=current reveal_file=' .. path .. '<cr>'
            end
        end, { desc = 'Show file tree in a current window', expr = true })
    end,
}

-- return {
--     'nvim-tree/nvim-tree.lua',
--     version = '*',
--     lazy = false,
--     dependencies = { 'nvim-tree/nvim-web-devicons' },
--     config = function()
--         require('nvim-tree').setup {
--             diagnostics = {
--                 enable = true,
--                 show_on_dirs = true,
--             },
--         }
--         vim.keymap.set('n', '<leader>1', '<cmd>NvimTreeToggle<cr>', {})
--         vim.keymap.set('n', '<leader>!', '<cmd>NvimTreeFindFile<cr>', {})
--         vim.cmd('NvimTreeToggle')
--     end,
-- }
