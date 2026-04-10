return {
    "mason-org/mason.nvim",
    lazy = false,
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
	},
    config = function()
        require("config.plugins.mason")
    end
}
