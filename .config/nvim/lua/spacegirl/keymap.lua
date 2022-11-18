local remap = require("spacegirl.remap")
local nnoremap = remap.nnoremap
local nmap = remap.nmap

nnoremap("<leader>f", "<cmd>Files<CR>")
nnoremap("<leader>b", "<cmd>BLines<CR>")
nnoremap("<leader>r", "<cmd>Rg<CR>")

-- Surround with `Option<_>`
-- Expand '{}' into block
vim.cmd([[
    augroup pat_surround
        autocmd FileType rust nmap <buffer> <leader>so ysiw>iOption<ESC>
        autocmd FileType rust nmap <buffer> <leader><CR> ghf}i<CR><c-o>O
    augroup END
]])

nnoremap("gh", "0")
nnoremap("gl", "$")
nnoremap("gk", "gg")
nnoremap("gj", "G")
