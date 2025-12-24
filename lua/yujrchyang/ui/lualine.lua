-- lua/yujrchyang/ui/lualine.lua

require('lualine').setup({
  options = {
    theme = 'onedark',
    section_separators = '',
    component_separators = '',
    icons_enabled = false,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_x = {
      'encoding',
      'fileformat',
      'filetype',
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_c = { 'filename' },
  },
})
