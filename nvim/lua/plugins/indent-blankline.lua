return {
  -- Add indentation guides even on blank lines
  'lukas-reineke/indent-blankline.nvim',
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    char = '┊',
    show_trailing_blankline_indent = false,
  },
  config = function()
    require("indent_blankline").setup {
      buftype_exclude = { "terminal", "nofile" },
      filetype_exclude = { "dashboard", "mason" },
    }
  end,
}
