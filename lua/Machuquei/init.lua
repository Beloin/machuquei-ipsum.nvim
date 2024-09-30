local M = {}

function M.setup() end
vim.api.nvim_create_user_command("Machuquei", function(opts)
	local m = require("Machuquei.get_lyric")
	local n = tonumber(opts.args)
	local lyrics = m.get(n)

	local row, col = unpack(vim.api.nvim_win_get_cursor(0)) -- Get current cursor position
	vim.api.nvim_buf_set_text(0, row - 1, col, row - 1, col, { lyrics })
end, {
	nargs = 1,
})

return M
