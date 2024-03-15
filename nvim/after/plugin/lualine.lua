require('lualine').setup {
  options = { theme  = "tokyonight" },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1
      }
    }
  }
}
