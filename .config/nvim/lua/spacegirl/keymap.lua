local remap = require("spacegirl.remap")
local nnoremap = remap.nnoremap
local nmap = remap.nmap

nnoremap("<leader>f", "<cmd>Files<CR>")
nnoremap("<leader>b", "<cmd>BLines<CR>")
nnoremap("<leader>r", "<cmd>Rg<CR>")

-- Surround with `Option<_>`
vim.cmd([[
    augroup pat_surround
        autocmd VimEnter *.rs nmap <leader>so ysiw>iOption<ESC>
    augroup END
]])

nnoremap("gh", "0")
nnoremap("gl", "$")
nnoremap("gk", "gg")
nnoremap("gj", "G")

