return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {
		indent = {
			char = "│", -- or "▏" for thinner line
		},
		scope = {
			enabled = true, -- highlights current scope differently
			show_start = true,
			show_end = true,
		},
	},
}
