if vim.g.neovide then
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_scroll_animation_length = 0.3
  -- vim.g.neovide_scroll_animation_far_lines = 2
  -- vim.g.neovide_fullscreen = true
  -- vim.g.neovide_cursor_animation_length = 0.22
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_cursor_trail_size = 0.2
  vim.g.neovide_cursor_vfx_mode = "torpedo"
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_unlink_border_highlights = true
  vim.cmd([[colorscheme tokyonight]])
end
