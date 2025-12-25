-- lua/yujrchyang/ui/lualine.lua

require('lualine').setup({
  options = {
    theme = 'onedark',
    section_separators = '',
    component_separators = '',
    icons_enabled = true,
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
      {
        'fileformat',
        symbols = {
          unix = 'unix',
          dos = 'dos',
          mac = 'mac',
        }
      },
      'filetype',
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_c = { 'filename' },
  },
})
