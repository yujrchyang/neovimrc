-- lua/yujrchyang/ui/toggleterm.lua

local toggleterm = require("toggleterm")

toggleterm.setup({
  shell = "zsh",
  open_mapping = nil,

  -- Terminal behavior
  -- Automatically close the window when the shell exits
  close_on_exit = true,
  -- After opening, it will directly enter insert mode (where you can type)
  start_in_insert = true,
  -- Remember window size
  persist_size = true,
  -- Pop from the bottom (optional: vertical / float)
  direction = "horizontal",

  -- Appearance
  -- Hide line numbers
  hide_numbers = true,
  -- Add shadow to the background
  shade_terminals = true,
  -- Shadow intensity (0~10)
  shading_factor = 2,
})

-- Keyboard shortcut: Used only for "Switch to general terminal"
vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

-- Easily return to Neovim normal mode from terminal mode
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
