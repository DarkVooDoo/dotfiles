require('lualine').setup {
  options = {
      theme = 'ayu_mirage',
      component_separators = { left = '|', right = '|'},
      section_separators = { left = '|', right = '|'},
      sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
      }
  }
}
