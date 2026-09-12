local theme = require("hypr.theme")

hl.config({
    group = {
        col = {
            border_active = theme.with_alpha(theme.colors.primary, "e6"),
            border_inactive = theme.with_alpha(theme.colors.on_surface, "11"),
            border_locked_active = theme.with_alpha(theme.colors.primary, "e6"),
            border_locked_inactive = theme.with_alpha(theme.colors.on_surface, "11"),
        },
        groupbar = {
            font_family = "JetBrains Mono NF",
            font_size = 15,
            gradients = true,
            gradient_round_only_edges = false,
            gradient_rounding = 5,
            height = 25,
            indicator_height = 0,
            gaps_in = 3,
            gaps_out = 3,
            text_color = theme.colors.on_secondary,
            col = {
                active = theme.with_alpha(theme.colors.primary, "d4"),
                inactive = theme.with_alpha(theme.colors.on_surface, "40"),
                locked_active = theme.with_alpha(theme.colors.primary, "d4"),
                locked_inactive = theme.with_alpha(theme.colors.secondary, "d4"),
            },
        },
    },
})
