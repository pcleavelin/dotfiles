local remap = require("spacegirl.remap")
local nnoremap = remap.nnoremap
local nmap = remap.nmap
local tnoremap = remap.tnoremap

nnoremap("<leader>f", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>b", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
nnoremap("<leader>B", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>r", "<cmd>Telescope live_grep search=\"<CR>")
nnoremap("<leader>d", "<cmd>Telescope diagnostics<CR>")
nnoremap("<leader>u", "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>`")
nnoremap("gr", "<cmd>Telescope lsp_references<CR>")
nnoremap("gd", "<cmd>Telescope lsp_definitions<CR>")
nnoremap("gy", "<cmd>Telescope lsp_type_definitions<CR>")
nnoremap("gq", "<cmd>Telescope diagnostics<CR>")
tnoremap("<ESC>", "<C-\\><C-N>")

-- Surround with `Option<_>`
-- Expand '{}' into block
vim.cmd([[
    augroup pat_surround
        autocmd FileType rust nmap <buffer> <leader>so ysiw>iOption<ESC>
        autocmd FileType * nmap <buffer> <leader><CR> glF{a<CR><c-o>O
        autocmd FileType rust set efm=%Eerror%.%#:\ %m,%C%.%#-->\ %f:%l:%c,%C%.%#\|%.%#,%Z,%Wwarning%.%#:\ %m,%C%.%#-->\ %f:%l:%c,%C%.%#\|%.%#,%Z,%Nnote%.%#:\ %m,%C%.%#-->\ %f:%l:%c,%C%.%#\|%.%#,%Z
    augroup END
]])

nnoremap("gh", "0")
nnoremap("gl", "$")
nnoremap("gk", "gg")
nnoremap("gj", "G")
