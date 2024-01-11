mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${THEME_DIR}/gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${THEME_DIR}/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${THEME_DIR}/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"


sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=Catppuccin-Mocha-Standard-Mauve-Dark

# catppuccin
ctpversion=v0.7.1
if [ ! -e ~/.themes/Catppuccin-Mocha-Standard-Mauve-Dark ]; then 
  mkdir -p ~/.themes 
  curl -L https://github.com/catppuccin/gtk/releases/download/$ctpversion/Catppuccin-Mocha-Standard-Mauve-Dark.zip -o ~/.themes/catppuccin.zip 
  unzip ~/.themes/catppuccin.zip -d ~/.themes/ 
  rm -rf ~/.themes/catppuccin.zip; 
fi

echo "export GTK_THEME='Catppuccin-Mocha-Standard-Mauve-Dark:dark'" >> ~/.zshrc
echo "export GTK_THEME='Catppuccin-Mocha-Standard-Mauve-Dark:dark'" >> ~/.bashrc
