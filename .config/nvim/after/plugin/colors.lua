function ColorMyPencils(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color);
--  vim.cmd('set bg=light')

	-- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	-- vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils(color)
