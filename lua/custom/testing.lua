local Test = function()
	local width = math.ceil(vim.o.columns * 0.7)
	local height = math.ceil(vim.o.lines * 0.5)

	local cmd = "source "
		.. vim.fn.getcwd()
		.. "/scripts/env.sh && TEST_TYPE=unit npx vitest run --coverage"
		.. vim.api.nvim_buf_get_name(0)

	vim.api.nvim_open_win(vim.api.nvim_create_buf(false, true), true, {
		relative = "editor",
		style = "minimal",
		noautocmd = true,
		width = width,
		height = height,
		col = math.min((vim.o.columns - width) / 2),
		row = math.min((vim.o.lines - height) / 2 - 1),
	})

	vim.fn.termopen(cmd)
end

vim.api.nvim_create_user_command("Test", Test, {})
