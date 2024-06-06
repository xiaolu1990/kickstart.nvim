-- [[ Bufferline ]] A plugin manage tabs
return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  keys = {
    { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
    { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
  },
  config = function()
    require('bufferline').setup {
      highlights = { buffer_selected = { fg = '#FF80A0' } },
      options = {
        always_show_bufferline = true,
        auto_toggle_bufferline = true,
        separator_style = 'slant',
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'Neo-tree',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
      },
    }
  end,
}
