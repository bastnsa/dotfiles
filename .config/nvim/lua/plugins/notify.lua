---@diagnostic disable: missing-fields
return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			-- stages = "slide",
		})
	end,
}
