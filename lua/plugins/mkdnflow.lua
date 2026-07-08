return {
	"jakewvincent/mkdnflow.nvim",
	ft = { "markdown" },
	opts = {
		mappings = {
			MkdnCreateLinkFromClipboard = false,
		},
		perspective = {
			priority = "current",
			fallback = "first",
		},
	},
}
