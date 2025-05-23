-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.cmd([[
  xnoremap p "_dP
]])

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = "*.sk",
	callback = function()
		vim.bo.filetype = "skript"
	end,
})

-- Set up custom filetypes
vim.filetype.add({
	extension = {
		foo = "fooscript",
	},
	filename = {
		["Foofile"] = "fooscript",
	},
	pattern = {
		["~/%.config/foo/.*"] = "fooscript",
	},
})
