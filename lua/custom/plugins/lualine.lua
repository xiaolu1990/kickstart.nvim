return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'gruvbox-material',
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
    }
  end,
}
