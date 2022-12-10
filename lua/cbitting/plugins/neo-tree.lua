local status, neotree = pcall(require, "neotree")
if not status then
	return
end

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]]) -- recommended from documentation

neotree.setup({
	close_if_last_window = true,
	enable_git_status = true,
	filesystem = {
		filtered_items = {
			visible = false, -- when true, they will just be displayed differently than normal items
			hide_dotfiles = false,
			hide_gitignored = false,
			always_show = { -- remains visible even if other settings would normally hide it
				".gitignored",
			},
			never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
				".DS_Store",
				--"thumbs.db"
			},
			never_show_by_pattern = { -- uses glob style patterns
				".null-ls_*",
			},
		},
	},
})
