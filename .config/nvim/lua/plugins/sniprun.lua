return {
	"michaelb/sniprun",
	branch = "master",
	build = "sh install.sh",
	config = function()
		require("sniprun").setup({
			selected_interpreters = { "JS_TS_deno" },
			display = {
				"NvimNotify",
			},
			display_options = {
				notification_timeout = 6000,
			},
		})
	end,
}
