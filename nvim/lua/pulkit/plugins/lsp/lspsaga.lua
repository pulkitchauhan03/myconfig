-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

saga.setup({
	move_in_saga = { prev = "<C-k>", next = "<C-j>" },
	-- finder_action_keys = {
	-- 	open = "<CR>",
	-- },
  -- keybinds for navigation in lspsaga window
  scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
  -- use enter to open file with definition preview
  definition_action_keys = {
    edit = "<CR>",
    quit = "q",
  },
  ui = {
    colors = {
      normal_bg = "#022746",
    },
  },
})
