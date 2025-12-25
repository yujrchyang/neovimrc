-- lua/yujrchyang/ui/nvim-tree.lua

require("nvim-tree").setup({
  -- Git statuses are now prefixed with text (e.g., [M] indicates modification).
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },

  -- Diagnostic information is retained (but without an icon).
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    icons = {
      hint = "H",
      info = "I",
      warning = "W",
      error = "E",
    },
  },

  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
  },
  filters = {
    dotfiles = false,
    custom = { ".DS_Store" },
  },
  view = {
    width = 30,
    side = "left",
    preserve_window_proportions = true,
  },
  update_focused_file = {
    enable = true,
  },
})
