require('lazy').setup({'tpope/vim-sleuth', -- Plugin to improve UI
{
    'stevearc/dressing.nvim',
    event = 'VeryLazy',
    opts = {}
}, {
    'numToStr/Comment.nvim',
    opts = {}
}, {
    import = 'custom.plugins'
}}, {
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
            lazy = '💤 '
        }
    },
    change_detection = {
        notify = false
    },
    checker = {
        enabled = true,
        notify = false
    }
})
