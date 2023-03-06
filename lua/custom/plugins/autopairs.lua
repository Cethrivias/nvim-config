-- File: lua/custom/plugins/autopairs.lua

return {
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup {
      enable_check_bracket_line = false,
      check_ts = true
    }
  end,
}
