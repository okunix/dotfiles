vim.filetype.add({
	extension = {
		tf = "terraform",
		j2 = "jinja",
	},
	filename = {
		[".gitlab-ci.yml"] = "yaml.gitlab",
	},
	pattern = {
		[".*/ansible/.*%.yaml"] = "yaml.ansible",
		[".*/ansible/.*%.yml"] = "yaml.ansible",
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.config("yamlls", {
	cmd = { "yaml-language-server", "--stdio" },
	settings = {
		yaml = {
			schemaStore = {
				enable = false,
			},
			schemas = {
				["https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = "*.gitlab-ci.yml",
			},
		},
	},
	filetypes = { "yaml.gitlab" },
})

vim.lsp.config("clangd", {
	cmd = { "clangd", "--background-index", "--clang-tidy", "--log=verbose" },
	init_options = {
		fallbackFlags = { "-std=c++17" },
	},
})

vim.lsp.config("terraformls", {
	filetypes = { "terraform" },
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
