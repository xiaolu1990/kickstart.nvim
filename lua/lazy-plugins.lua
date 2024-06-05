-- [[ Configure and install plugins ]]

require('lazy').setup({

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- NOTE: Modular approach: using `require 'path.name'` will
  -- include a plugin defintion from file lua/path/name

  -- require 'kickstart.plugins.debug',

  require 'kickstart.plugins.gitsigns',

  -- require 'kickstart.plugins.indent_line',

  -- require 'kickstart.plugins.lint',

  -- require 'kickstart.plugins.autopairs',

  -- require 'kickstart.plugins.neo-tree',

  -- [[ Custom Plugins ]]
  { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
