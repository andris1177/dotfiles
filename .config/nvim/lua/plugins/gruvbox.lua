return { 
    "ellisonleao/gruvbox.nvim", 
    priority = 1000 , 
    config = true, 
    opts = ..., 
    name = "gruvbox",
    config = function()
        vim.cmd.colorscheme "gruvbox"
    end
}
