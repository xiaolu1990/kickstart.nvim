-- [[ Bufferline ]] A plugin manage tabs
return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = '*',
  config = function()
    require('bufferline').setup {
      options = {
        separator_style = 'slant',
        mode = 'buffers',
      },
    }

    -- keymaps
    local keymap = vim.keymap
    keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Previous buffer' })
    keymap.set('n', ']b', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer' })
  end,
}
