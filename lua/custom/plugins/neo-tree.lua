-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      window = {
        position = 'left', -- left, right, top, bottom, float, current
      },
    }

    -- disable netrw
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_netrw = 1

    -- set keymaps
    local keymap = vim.keymap

    keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<CR>', { desc = 'Open file explorer' }) -- toggle file explorer
    keymap.set('n', '<leader>ef', '<cmd>Neotree reveal<CR>', { desc = 'Reveal current file in explorer' }) -- toggle file explorer on current file
  end,
}
