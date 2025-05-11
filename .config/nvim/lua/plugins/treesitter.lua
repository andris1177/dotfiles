return {
    "nvim-treesitter/nvim-treesitter", 
    build= ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "cpp", "python", "html", "css", "javascript", "c"},
            highlight = {enable = true},
            indent = {enable = true},
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        })
    end
}
