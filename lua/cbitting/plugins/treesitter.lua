local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {
		"json",
		"yaml",
		"bash",
		"lua",
		"vim",
		"gitignore",
		"python",
		"rust",
		"java",
		"kotlin",
	},
	auto_isntall = true,
})
