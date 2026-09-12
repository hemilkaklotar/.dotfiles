local theme = require("hypr.theme")

hl.config({
    decoration = {
        rounding = 8,
        blur = {
            enabled = true,
            xray = false,
            special = false,
            ignore_opacity = true,
            new_optimizations = true,
            popups = true,
            input_methods = true,
            size = 8,
            passes = 2,
            vibrancy = 0.1696,
        },
        shadow = {
            enabled = true,
            range = 15,
            render_power = 4,
            color = theme.with_alpha(theme.colors.primary, "10"),
        },
    },
})
