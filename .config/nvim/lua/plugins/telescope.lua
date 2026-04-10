return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.2',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        require("config.plugins.telescope")
    end
}
