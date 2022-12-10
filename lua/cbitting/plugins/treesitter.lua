local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = { enable = true },
	indent = { enable = false },
	ensure_installed = {
		"json",
		"lua",
		"vim",
		"gitignore",
		"python",
		"rust",
	},
	auto_isntall = true,
})
