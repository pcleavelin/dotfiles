vim.cmd('let g:neovide_transparency = 0.99')
vim.cmd('let g:neovide_cursor_animation_length=0.01')
vim.cmd('let g:neovide_scroll_animation_length=0.5')
vim.cmd('let g:neovide_floating_blur_amount_y = 2.0')
vim.cmd('let g:neovide_hide_mouse_when_typing=v:true')
vim.cmd('let g:gruvbox_transparent_bg = 1')

-- Enable transparent background
vim.cmd('colorscheme gruvbox')

vim.cmd('highlight Normal guibg=none ctermbg=none')
vim.cmd('highlight NormalNC guibg=none')
