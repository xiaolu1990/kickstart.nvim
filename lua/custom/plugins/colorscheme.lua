-- Colorscheme Everforest
-- return {
--   'neanias/everforest-nvim',
--   version = false,
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('everforest').setup {
--       background = 'soft',
--       transparent_background_level = 0,
--       italics = true,
--     }
--     require('everforest').load()
--   end,
-- }

-- Colorscheme Gruvbox
return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = 'soft', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = true,
        transparent_mode = false,
      }
      vim.cmd 'colorscheme gruvbox'
    end,
  },
}
