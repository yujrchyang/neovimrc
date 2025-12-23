-- lua/yujrchyang/ui/bufferline.lua

require("bufferline").setup({
  options = {
    -- Display mode: buffers only (not tabs)
    mode = "buffers",

    -- Style: Use diagonal separators (slant/thin/default).
    separator_style = "thin",

    -- Disable icon
    show_buffer_icons = false,

    -- Should the close button (X) be displayed?
    show_close_icon = false,
    show_buffer_close_icons = false,

    -- Mouse support
    mouse_bindings = true,

    -- The left side always displays buffer 0 (to avoid gaps).
    always_show_bufferline = true,

    -- Click buffer to switch
    left_mouse_command = "buffer %d",
    right_mouse_command = "bdelete %d",

    -- Highlight the current buffer
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,

    -- Custom buffer name (hides the path, only displays the filename)
    naming_strategy = "relative_short",
  },
})
