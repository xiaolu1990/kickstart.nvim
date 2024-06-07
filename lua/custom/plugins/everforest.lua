-- Colorscheme: Everforest
return {
  'neanias/everforest-nvim',
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require('everforest').setup {
      background = 'soft',
      transparent_background_level = 0,
      italics = true,
      ui_contrast = 'high',
    }
    require('everforest').load()
  end,
}
