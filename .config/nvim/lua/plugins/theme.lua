return { 
    "catppuccin/nvim", 
    priority = 1000 , 
    config = true, 
    opts = ..., 
    name = "catppuccin",
    config = function()
        vim.cmd.colorscheme "catppuccin-mocha"
    end
}
