-- LSP Config
local rust_toolchain = vim.fn.system('rustup show | tail -n 3 | head -n 1 | cut -d " " -f1')
local ra_path = vim.env.HOME..'/.rustup/toolchains/' .. vim.fn.trim(rust_toolchain) .. '/bin/rust-analyzer'

local on_attach = function(buffer, bufnr)
    -- See `:help vim.lsp.*`
    local bufopts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd',        ':lua vim.lsp.buf.definition()<Enter>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr',        ':lua vim.lsp.buf.references()<Enter>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>i', ':lua vim.lsp.buf.implementation()<Enter>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>k', ':lua vim.lsp.buf.hover()<Enter>', bufopts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>R', ':lua vim.lsp.buf.rename()<Enter>', bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150
}

require('lspconfig')['rust_analyzer'].setup {
    on_attach = on_attach,
    flags = lsp_flags,

    cmd = { ra_path },
    settings = {
        ["rust-analyzer"] = {
            ["cargo.checkOnSave"] = "clippy"
        }
    }
}