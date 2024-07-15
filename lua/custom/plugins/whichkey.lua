-- Plugin to show the available keybindings in a popup window

return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  dependencies = { { 'echasnovski/mini.icons', version = false } },
  opts = {
    preset = 'modern',
    icons = { rules = false }, --disable icons
    spec = {
      { '<leader>c', group = '[C]ode' },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>e', group = '[E]xplorer' },
      { '<leader>h', group = 'Git [H]unk' },
      { '<leader>l', group = '[L]azy' },
      { '<leader>q', group = '[Q]uit' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>u', group = '[U]tils' },
      { '<leader>w', group = '[W]indow' },
      { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    },
  },
}
-- require('which-key').add }

-- vim: ts=2 sts=2 sw=2 et
