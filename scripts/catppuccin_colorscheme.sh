#!/usr/bin/env bash
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"

ThemeName="catppuccin-mocha-mauve-standard+default"

sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=$ThemeName

if [ ! -e ~/.themes/$ThemeName  ]; then
  mkdir -p ~/.themes
  curl -L https://github.com/catppuccin/gtk/releases/latest/download/$ThemeName.zip -o /tmp/$ThemeName.zip
  unzip /tmp/$ThemeName.zip -d ~/.themes/
  rm -rf /tmp/$ThemeName.zip;
  echo "$ThemeName installed"
else
  echo "$ThemeName already installed"
fi

add_theme_to_rc_file() {
    local rc_file="$1"
    local theme_line="export GTK_THEME='$ThemeName:dark'"

    if ! grep -qF "$theme_line" "$rc_file"; then
        echo "$theme_line" >> "$rc_file"
        echo "Theme line added to $rc_file"
    else
        echo "Theme line already present in $rc_file"
    fi
}

add_theme_to_rc_file "$HOME/.zshrc"
add_theme_to_rc_file "$HOME/.profile"
add_theme_to_rc_file "$HOME/.bashrc"


# NOTE: cloning the kvantum theme for catppuccin
mkdir -p ~/.config/Kvantum
git clone https://github.com/catppuccin/Kvantum.git /tmp/catppuccin_kvantum
cp -r /tmp/catppuccin_kvantum/themes/catppuccin-mocha-mauve ~/.config/Kvantum/Catppuccin-Mocha-Mauve
rm -rf /tmp/catppuccin_kvantum
# Check if the file exists
if [ ! -f ~/.config/Kvantum/kvantum.kvconfig ]; then
    # If the file doesn't exist, create it and add the specified content
    echo "[General]" > ~/.config/Kvantum/kvantum.kvconfig
    echo "theme=Catppuccin-Mocha-Mauve" >> ~/.config/Kvantum/kvantum.kvconfig
else
    # If the file exists, replace the theme setting
    sed -i 's/^theme=.*/theme=Catppuccin-Mocha-Mauve/' ~/.config/Kvantum/kvantum.kvconfig
fi

# NOTE: set kvantum theme into qt6ct

# Check if the file exists
if [ ! -f ~/.config/qt6ct/qt6ct.conf ]; then
    # If the file doesn't exist, create it and add the specified content
    echo "[Appearance]" > ~/.config/qt6ct/qt6ct.conf
    echo "style=kvantum-dark" >> ~/.config/qt6ct/qt6ct.conf
else
    # If the file exists, replace the style setting
    sed -i 's/^style=.*/style=kvantum-dark/' ~/.config/qt6ct/qt6ct.conf
fi
