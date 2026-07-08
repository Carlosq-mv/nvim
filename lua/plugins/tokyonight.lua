return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme tokyonight-night")

		-- Baby Blue Top, White Middle, Pink Bottom
		-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#51B3EC", bold = true })
		-- vim.api.nvim_set_hl(0, "LineNr", { fg = "white", bold = true })
		-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = true })
		--
		-- All Gold, White Middle
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#FFD700" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFFFF", bold = true })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FFD700" })
	end,
}
