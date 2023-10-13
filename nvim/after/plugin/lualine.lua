require('lualine').setup {
  options = { theme  = "16color" },
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
