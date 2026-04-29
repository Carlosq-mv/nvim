return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "ruff" },
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			go = { "golangcilint" },
			c = { "cpplint" },
			cpp = { "cpplint" },
			java = { "checkstyle" },
		}

		-- Auto-lint on save, when opening files, and when leaving insert mode
		vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})

		-- Manual trigger
		vim.keymap.set("n", "<leader>ll", function()
			require("lint").try_lint()
		end, { desc = "Trigger linting" })
	end,
}
