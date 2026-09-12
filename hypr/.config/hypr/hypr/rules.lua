-- Window / workspace / layer rules — declarative tables + emitters

-- Window rules
local window_rules = {
    { match = { fullscreen = false }, opacity = "1 override" },
    { match = { class = "foot|equibop|org\\.quickshell|imv|swappy" }, opaque = true },
    { match = { float = true, xwayland = false }, center = true },

    -- float apps
    { match = { class = "guifetch" }, float = true },
    { match = { class = "yad" }, float = true },
    { match = { class = "zenity" }, float = true },
    { match = { class = "wev" }, float = true },
    { match = { class = "org\\.gnome\\.FileRoller" }, float = true },
    { match = { class = "file-roller" }, float = true },
    { match = { class = "blueman-manager" }, float = true },
    { match = { class = "com\\.github\\.GradienceTeam\\.Gradience" }, float = true },
    { match = { class = "feh" }, float = true },
    { match = { class = "imv" }, float = true },
    { match = { class = "system-config-printer" }, float = true },
    { match = { class = "org\\.quickshell" }, float = true },

    -- float + resize + center
    { match = { class = "foot", title = "nmtui" }, float = true },
    { match = { class = "foot", title = "nmtui" }, size = { "60%", "70%" } },
    { match = { class = "foot", title = "nmtui" }, center = 1 },
    { match = { class = "org\\.gnome\\.Settings" }, float = true },
    { match = { class = "org\\.gnome\\.Settings" }, size = { "70%", "80%" } },
    { match = { class = "org\\.gnome\\.Settings" }, center = 1 },
    { match = { class = "org\\.pulseaudio\\.pavucontrol|yad-icon-browser" }, float = true },
    { match = { class = "org\\.pulseaudio\\.pavucontrol|yad-icon-browser" }, size = { "60%", "70%" } },
    { match = { class = "org\\.pulseaudio\\.pavucontrol|yad-icon-browser" }, center = 1 },
    { match = { class = "nwg-look" }, float = true },
    { match = { class = "nwg-look" }, size = { "50%", "60%" } },
    { match = { class = "nwg-look" }, center = 1 },

    -- special workspaces
    { match = { class = "btop" }, workspace = "special:sysmon" },
    { match = { class = "feishin|Spotify|Supersonic|Cider|com.github.th_ch.youtube_music|Plexamp|com-maxrave-simpmusic-MainKt" }, workspace = "special:music" },
    { match = { initial_title = "Spotify( Free)?" }, workspace = "special:music" },
    { match = { class = "discord|equibop|vesktop|whatsapp" }, workspace = "special:communication" },
    { match = { class = "Todoist" }, workspace = "special:todo" },

    -- dialogs
    { match = { title = "(Select|Open)( a)? (File|Folder)(s)?" }, float = true },
    { match = { title = "File (Operation|Upload)( Progress)?" }, float = true },
    { match = { title = ".* Properties" }, float = true },
    { match = { title = "Export Image as PNG" }, float = true },
    { match = { title = "GIMP Crash Debug" }, float = true },
    { match = { title = "Save As" }, float = true },
    { match = { title = "Library" }, float = true },

    -- PiP
    { match = { title = "Picture(-| )in(-| )[Pp]icture" }, move = "100%-w-2% 100%-w-3%" },
    { match = { title = "Picture(-| )in(-| )[Pp]icture" }, keep_aspect_ratio = true },
    { match = { title = "Picture(-| )in(-| )[Pp]icture" }, float = true },
    { match = { title = "Picture(-| )in(-| )[Pp]icture" }, pin = true },

    { match = { class = "krita|gimp|inkscape|darktable|resolve|kdenlive|shotcut|blender|godot" }, opaque = true },
    { match = { class = "^(ueberzugpp_.*)$" }, float = true },
    { match = { class = "^(ueberzugpp_.*)$" }, no_initial_focus = true },
    { match = { class = "steam" }, rounding = 10 },
    { match = { title = "Friends List", class = "steam" }, float = true },
    { match = { class = "(steam_app_(default|[0-9]+))|gamescope" }, opaque = true },
    { match = { class = "(steam_app_(default|[0-9]+))|gamescope" }, immediate = true },
    { match = { class = "(steam_app_(default|[0-9]+))|gamescope" }, idle_inhibit = "always" },
    { match = { class = "com-atlauncher-App", title = "ATLauncher Console" }, float = true },
    { match = { class = "PandoraLauncher", title = "Minecraft Game Output" }, float = true },
    { match = { title = "Fusion360|(Marking Menu)", class = "fusion360\\.exe" }, no_blur = true },
    { match = { xwayland = 1, title = "win[0-9]+" }, no_dim = true },
    { match = { xwayland = 1, title = "win[0-9]+" }, no_shadow = true },
    { match = { xwayland = 1, title = "win[0-9]+" }, rounding = 10 },
    { match = { class = "dev\\.noctalia\\.Noctalia" }, float = true },
    { match = { class = "dev\\.noctalia\\.Noctalia" }, size = { "1080", "920" } },
    { match = { class = "dev\\.noctalia\\.Noctalia" }, center = true },
}

for _, r in ipairs(window_rules) do
    hl.window_rule(r)
end

-- Workspace rules
hl.workspace_rule({ workspace = "1", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "7", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "8", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "9", monitor = "eDP-1", persistent = true })
hl.workspace_rule({ workspace = "w[tv1]s[false]", gaps_out = 4 })
hl.workspace_rule({ workspace = "f[1]s[false]", gaps_out = 4 })

-- Layer rules
hl.layer_rule({ match = { namespace = "hyprpicker" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "logout_dialog" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "selection" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "wayfreeze" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "launcher" }, animation = "popin 80%" })
hl.layer_rule({ match = { namespace = "launcher" }, blur = true })
hl.layer_rule({ match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" }, no_anim = true })
hl.layer_rule({ match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" }, ignore_alpha = 0.5 })
hl.layer_rule({ match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" }, blur = true })
hl.layer_rule({ match = { namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$" }, blur_popups = true })
