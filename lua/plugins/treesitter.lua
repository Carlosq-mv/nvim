return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "*",
			callback = function()
				vim.api.nvim_set_hl(0, "@markup.italic", { italic = true })
				vim.api.nvim_set_hl(0, "@markup.strong", { bold = true })
			end,
		})
		-- vim.api.nvim_set_hl(0, "@markup.italic", { italic = true })
		-- vim.api.nvim_set_hl(0, "@markup.strong", { bold = true })
	end,
}
