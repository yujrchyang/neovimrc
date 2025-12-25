-- lua/yujrchyang/ui/aerial.lua

require("aerial").setup({
  opts = {
    attach_mode = "global",
    backends = { "lsp", "treesitter" },
    layout = { min_width = 28, max_width = 40 },
  },

  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
