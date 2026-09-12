-- palette seam — noctalia is the source of truth, fallback = current Tokyo-Night values
local ok, noctalia = pcall(require, "noctalia")
local colors
if ok and noctalia.colors then
    colors = noctalia.colors
else
    colors = {
        primary = "rgb(7aa2f7)",
        surface = "rgb(000000)",
        on_surface = "rgb(c8c5d1)",
        secondary = "rgb(bb9af7)",
        on_secondary = "rgb(1a1a2e)",
        error = "rgb(f7768e)",
        on_error = "rgb(1a1a2e)",
    }
end

local function hex_of(rgb_str)
    return rgb_str:match("rgb%((%x+)%)") or rgb_str:gsub("[^0-9a-fA-F]", "")
end

local function with_alpha(rgb_str, alpha_hex)
    return "rgba(" .. hex_of(rgb_str) .. alpha_hex .. ")"
end

return {
    colors = colors,
    with_alpha = with_alpha,
    hex_of = hex_of,
}
