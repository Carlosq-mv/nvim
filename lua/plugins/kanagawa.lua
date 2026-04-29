return {
	"rebelot/kanagawa.nvim",
	lazy = false, -- load at startup, not on-demand
	priority = 1000, -- load before other plugins
	config = function()
		require("kanagawa").setup({
			-- optional tweaks, defaults are great
		})
		vim.cmd.colorscheme("kanagawa")
	end,
}
