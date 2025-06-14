return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	--config = function()
	--  vim.keymap.set("n", "<leader>e", ":Neotree reveal<CR>", {})
	--end,
	cmd = "Neotree",
	keys = {
		{ "<leader>e", ":Neotree toggle<CR>", desc = "NeoTree toggle", silent = true },
	},
	opts = {
		popup_border_style = "rounded",
		window = {
			width = 30,
		},
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = true,
				hide_by_name = {
					".git",
				},
				-- never_show = { ".git" },
			},
			window = {
				mappings = {
					["<space>"] = "",
					["l"] = "open",
					["h"] = "close_node",
					["o"] = "open",
					["oc"] = "noop",
					["od"] = "noop",
					["og"] = "noop",
					["om"] = "noop",
					["on"] = "noop",
					["os"] = "noop",
					["ot"] = "noop",
				},
			},
		},
		event_handlers = {
			{
				event = "file_open_requested",
				handler = function()
					require("neo-tree.command").execute({ action = "close" })
				end,
			},
		},
	},
}
