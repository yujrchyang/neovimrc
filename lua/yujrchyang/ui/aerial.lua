-- lua/yujrchyang/ui/aerial.lua

require("aerial").setup({
  attach_mode = "global",
  backends = { "lsp" },
  layout = { min_width = 28, max_width = 40 },
  disable_max_lines = false,
  disable_max_size  = false,

  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
