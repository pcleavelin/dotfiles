require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ["<C-d>"] = require('telescope.actions').delete_buffer
            }
        }
    }
}
