return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	init = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"lua",
				"python",
				"go",
				"c",
				"cpp",
				"java",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"yaml",
				"markdown",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
	config = function()
		require("nvim-treesitter").install({
			"python",
			"go",
			"cpp",
			"java",
			"javascript",
			"typescript",
			"tsx",
			"jsx",
			"html",
			"css",
			"json",
			"yaml",
		})
	end,
}
