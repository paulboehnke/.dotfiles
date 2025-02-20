require('lualine').setup {
  options = { theme  = "catppuccin" },
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
