vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true

vim.opt.wrap = true
vim.opt.hlsearch = false
vim.opt.errorbells = false
vim.opt.hidden = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "/Users/temp/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 16
vim.opt.colorcolumn = {80}
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = 2
vim.opt.guifont = 'JetBrains Mono:h12'

vim.g.mapleader = " "

-- secrets used for special logins
-- require('spacegirl.secrets').setup()

vim.cmd([[
    augroup pat_fugitive
        autocmd VimEnter * set statusline=%<%f\ %h%m%r%{FugitiveStatusline()}%=%-14.(%l,%c%V%)\ %P
    augroup END
]])
