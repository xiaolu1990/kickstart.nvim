-- Plugin to outline code on sidebar
return {
  'hedyhli/outline.nvim',
  lazy = true,
  cmd = { 'Outline', 'OutlineOpen' },
  keys = { -- Example mapping to toggle outline
    { '<leader>co', '<cmd>Outline<CR>', desc = 'Toggle code outline' },
  },
  opts = {
    -- Your setup opts here
    outline_window = {
      auto_jump = true, -- automatically navigate to the corresponding code location
    },
  },
}
