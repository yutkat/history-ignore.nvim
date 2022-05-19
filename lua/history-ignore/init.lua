local M = {}

local config = require("history-ignore.config")

local function clean(ignore_words)
	for index, value in ipairs(ignore_words) do
		print(value)
		vim.fn.histdel(":", value)
	end
end

function M.setup(user_conf)
	local c = config.set(user_conf)
	local group_name = "history_ignore"
	vim.api.nvim_create_augroup(group_name, { clear = true })

	vim.api.nvim_create_autocmd({ "CmdlineEnter" }, {
		group = group_name,
		pattern = "*",
		callback = function()
			clean(c.ignore_words)
		end,
		once = false,
	})
end

return M
