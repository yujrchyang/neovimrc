local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = "🔍 ",
    selection_caret = "➤ ",
    entry_prefix = "  ",
    initial_mode = "insert",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_cutoff = 100,
        width = 0.9,
        height = 0.8,
      },
    },
    file_sorter = require("telescope.sorters").get_fzy_sorter,
    file_ignore_patterns = { ".git/", "node_modules/", "build/", "target/" },
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
  },
})

-- Optional: use fzf-native for speed
pcall(require("telescope").load_extension, "fzf")
