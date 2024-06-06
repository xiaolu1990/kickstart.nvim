-- Highlight todo, notes, etc in comments
-- Todo matches on any text that starts with one of your defined keywords (or alt) followed by a colon:
--
-- TODO: do something
-- FIX: this should be fixed
-- HACK: weird code warning

return {
  'folke/todo-comments.nvim',
  cmd = { 'TodoTelescope' },
  event = 'VimEnter',
  config = true,
  -- stylua: ignore
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next Todo Comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous Todo Comment" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "[S]earch [T]odo Comments" },
  },
  opt = {},
}

-- vim: ts=2 sts=2 sw=2 et
