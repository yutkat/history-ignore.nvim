local M = {}

local config = {
	ignore_words = {
		"^buf$",
		"^history$",
		"^h$",
		"^q$",
		"^qa$",
		"^w$",
		"^wq$",
		"^wa$",
		"^wqa$",
		"^q!$",
		"^qa!$",
		"^w!$",
		"^wq!$",
		"^wa!$",
		"^wqa!$",
	},
}

function M.set(user_conf)
	if user_conf == nil then
		return config
	end
	if type(user_conf) ~= "table" then
		error("Configuration error")
	end
	config = vim.tbl_deep_extend("force", config, user_conf or {})
	return config
end

return M
