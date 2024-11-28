return {
	"marko-cerovac/material.nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("material-deep-ocean")
		vim.cmd.hi("Comment gui=none")
	end,
}
