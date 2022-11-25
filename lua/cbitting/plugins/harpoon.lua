local harpoon_setup, harpoon = pcall(require, "harpoon")
if not harpoon_setup then
	return
end

local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

telescope.load_extension("harpoon")

harpoon.setup({
	menu = {
		width = 60,
	},
})
