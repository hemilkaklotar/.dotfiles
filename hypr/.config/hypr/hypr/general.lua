local theme = require("hypr.theme")

hl.config({
	general = {
		layout = "dwindle",
		allow_tearing = false,
		gaps_workspaces = 4,
		gaps_in = 4,
		gaps_out = 4,
		border_size = 0,
		col = {
			active_border = theme.with_alpha(theme.colors.primary, "e6"),
			inactive_border = theme.with_alpha(theme.colors.on_surface, "11"),
		},
	},
	dwindle = {
		preserve_split = true,
		smart_split = false,
		smart_resizing = true,
	},
})
