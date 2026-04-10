local nobg = { bg = "none" }

local bold_white_text = { fg = "#e5e9f0", bg = "none", bold = true }

local colorscheme = {
	Normal = nobg,
	NormalNC = nobg,
	NormalFloat = nobg, --{ bg = "#060a17" },
	SignColumn = nobg,

	StatusLine = bold_white_text,
	StatusLineNC = bold_white_text,
	ModeMsg = bold_white_text,

	LineNrAbove = { fg = "#444b6a", bg = "none" },
	LineNrBelow = { fg = "#444b6a", bg = "none" },
	LineNr = { fg = "#56628a", bg = "none", bold = true },

    TelescopeNormal = nobg,
    TelescopeBorder = nobg,
    TelescopePromptBorder = nobg,
    TelescopePromptTitle = nobg,

    FloatBorder = nobg,
}

vim.cmd.colorscheme("tokyonight")
for k, v in pairs(colorscheme) do
	vim.api.nvim_set_hl(0, k, v)
end
