return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                transparent = true,
                highlight_overrides = {
                    all = function(colors)
                        return {
                            Visual = { bg = colors.surface0 },
                        }
                    end,
                },
            }

            -- vim.cmd.colorscheme 'catppuccin'
        end,
    },
}
