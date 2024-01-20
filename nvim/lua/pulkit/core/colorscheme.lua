-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
local status, _ = pcall(vim.cmd, "colorscheme github_dark_default")
-- local status, _ = pcall(vim.cmd, "colorscheme github_dark")
if not status then
	print("ColorScheme not found")
	return
end
