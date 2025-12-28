-- lua/yujrchyang/ui/gitsigns.lua

require("gitsigns").setup({
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "│" },
    topdelete    = { text = "‾" },
    changedelete = { text = "│" },
    untracked    = { text = "│" },
  },
  signcolumn = true,
  numhl      = false,
  linehl     = false,
  word_diff  = false,
})
