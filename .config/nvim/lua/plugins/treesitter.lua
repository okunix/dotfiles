return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        tag = "v0.10.0",
        lazy = false,
        config = function()
            require "custom.plugins.treesitter"
        end
    },
}
