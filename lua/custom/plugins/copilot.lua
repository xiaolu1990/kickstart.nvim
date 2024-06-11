-- Fully featured & enhanced replacement for copilot.vim complete with API for interacting with Github Copilot

return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  build = ':Copilot auth',
  config = function()
    require('copilot').setup {}
  end,
}
