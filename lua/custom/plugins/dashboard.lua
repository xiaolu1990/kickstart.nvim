-- [[ Dashboard ]] Welcome screen plugin

return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      config = { week_header = { enable = true, concat = nil, append = nil } },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
