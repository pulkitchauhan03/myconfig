local setup, cpt = pcall(require, "competitest")
if not setup then
	return
end

cpt.setup({
	compile_command = {
		cpp = { exec = "g++", args = { "$(FNAME)", "-o", "!" } },
	},
	run_command = {
		cpp = { exec = "./!" },
	},

	runner_ui = {
		interface = "split",
	},

	editor_ui = {
		show_rnu = true,
	},

	split_ui = {
		total_width = 0.5,
		vertical_layout = {
			{ 10, { { 0.4, "tc" }, { 0.6, "si" } } },
			{ 10, { { 0.5, "so" }, { 0.5, "eo" } } },
			{ 0.1, "se" },
		},
	},

	floating_border = "rounded",

	template_file = "~/.config/nvim/lua/pulkit/plugins/competitest-template/cpp.template",
	evaluate_template_modifiers = true,
	recceived_files_extension = "cpp",

	received_problems_path = "$(HOME)/code/cp/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)",
	received_problems_prompt_path = false,
	received_contests_directory = "$(HOME)/code/cp/$(JUDGE)/$(CONTEST)",
	received_contests_problems_path = "$(PROBLEM).$(FEXT)",
	received_contests_prompt_directory = false,
	received_contests_prompt_extension = false,

	testcases_directory = "testcases",
	testcases_use_single_file = true,
	replace_received_testcases = false,

	-- compile_directory = "binaries",
	run_directory = "binaries",
})
