-- [[ Alpha-nvim ]] Plugin to setup a welcome screen

return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'BlakeJC94/alpha-nvim-fortune',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local fortune = require 'alpha.fortune' -- a simple add-on to generate a formatted quote at the footer of the alpha-vim starting page

    -- Set header
    dashboard.section.header.val = {
      '                                                     ',
      '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      '                                                     ',
    }

    -- Set menu
    dashboard.section.buttons.val = {
      -- dashboard.button('e', '  > Create new File', '<cmd>ene<CR>'),
      dashboard.button('SPC ee', '  > Toggle file explorer', '<cmd>NvimTreeToggle<CR>'),
      dashboard.button('SPC sf', '󰱼  > Find File', '<cmd>Telescope find_files<CR>'),
      dashboard.button('SPC sg', '  > Find Word', '<cmd>Telescope live_grep<CR>'),
      dashboard.button('SPC ur', '󰁯  > Restore Last Session', '<cmd>SessionRestore<CR>'),
      dashboard.button('SPC qq', '  > Quit', '<cmd>qa<CR>'),
    }

    -- Give the returned couplet to alpha's footer
    dashboard.section.footer.val = fortune()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
