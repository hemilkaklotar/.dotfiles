-- Hyprland Lua config — modular, Noctalia-native (0.56+)
-- Generated from hyprlang migration; source of truth is this dir.
-- Rollback: delete this file and hyprland.conf (kept) takes over.

require("hypr.env")
require("hypr.general")
require("hypr.input")
require("hypr.misc")
require("hypr.animations")
require("hypr.decoration")
require("hypr.group")
require("hypr.execs")
require("hypr.rules")
require("hypr.gestures")
require("hypr.keybinds")
require("hypr.scrolling")

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = 1,
})

-- For Noctalia Color templates
do
    local ok, mod = pcall(require, "noctalia")
    if ok and mod.apply_theme then mod.apply_theme() end
end


-- For Noctalia Color templates
require("noctalia").apply_theme()
