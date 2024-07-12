-- Plugin to maximize a current split window
return {
  'szw/vim-maximizer',
  keys = {
    { '<leader>wm', '<cmd>MaximizerToggle<CR>', desc = 'Toggle maximize a split window' },
  },
}
