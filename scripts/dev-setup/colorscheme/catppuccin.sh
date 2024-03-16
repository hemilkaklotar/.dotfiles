#!/usr/bin/env bash
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"


sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Catppuccin-Mocha-Standard-Mauve-Dark

if [ ! -e ~/.themes/Catppuccin-Mocha-Standard-Mauve-Dark ]; then
  mkdir -p ~/.themes
  curl -L https://github.com/catppuccin/gtk/releases/latest/download/Catppuccin-Mocha-Standard-Mauve-Dark.zip -o ~/.themes/catppuccin.zip
  unzip ~/.themes/catppuccin.zip -d ~/.themes/
  rm -rf ~/.themes/catppuccin.zip;
  echo "catppuccin Mocha Mauve Dark installed"
else
  echo "catppuccin Mocha Mauve Dark already installed"
fi

add_theme_to_rc_file() {
    local rc_file="$1"
    local theme_line="export GTK_THEME='Catppuccin-Mocha-Standard-Mauve-Dark:dark'"

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
git clone https://github.com/catppuccin/Kvantum.git ~/Documents/catppuccin_kvantum
cp -r ~/Documents/catppuccin_kvantum/src/Catppuccin-Mocha-Mauve ~/.config/Kvantum/
rm -rf ~/Documents/catppuccin_kvantum
# Check if the file exists
if [ ! -f ~/.config/Kvantum/kvantum.kvconfig ]; then
    # If the file doesn't exist, create it and add the specified content
    echo "[General]" > ~/.config/Kvantum/kvantum.kvconfig
    echo "theme=Catppuccin-Mocha-Mauve" >> ~/.config/Kvantum/kvantum.kvconfig
else
    # If the file exists, replace the theme setting
    sed -i 's/^theme=.*/theme=Catppuccin-Mocha-Mauve/' ~/.config/Kvantum/kvantum.kvconfig
fi

# NOTE: set kvantum theme into qt5ct

# Check if the file exists
if [ ! -f ~/.config/qt5ct/qt5ct.conf ]; then
    # If the file doesn't exist, create it and add the specified content
    echo "[Appearance]" > ~/.config/qt5ct/qt5ct.conf
    echo "style=kvantum-dark" >> ~/.config/qt5ct/qt5ct.conf
else
    # If the file exists, replace the style setting
    sed -i 's/^style=.*/style=kvantum-dark/' ~/.config/qt5ct/qt5ct.conf
fi

