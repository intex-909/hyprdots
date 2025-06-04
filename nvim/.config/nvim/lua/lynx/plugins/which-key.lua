return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		delay = 0,

		-- Document existing key chains
		spec = {
			{ "<leader>f", group = "[F]ind files (telescope)" },
			{ "<leader>s", group = "[S]plit window" },
			{ "<leader>b", group = "[B]uffers" },
			{ "<leader>t", group = "[T]abs" },
			{ "<leader>k", group = "Comment" },
		},
	},
}
-- vim: ts=2 sts=2 sw=2 et
