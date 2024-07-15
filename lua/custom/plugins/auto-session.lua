-- [[ Auto Session ]] Plugin to manage sessions

return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'

    auto_session.setup {
      auto_restore_enabled = false,
      --   auto_session_suppress_dirs = { '~/', '~/Dev/', '~/Downloads', '~/Documents', '~/Desktop/' },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>ur', '<cmd>SessionRestore<CR>', { desc = '[R]estore session' }) -- restore last workspace session for current directory
    keymap.set('n', '<leader>us', '<cmd>SessionSave<CR>', { desc = '[S]ave session' }) -- save workspace session for current working directory
  end,
}
