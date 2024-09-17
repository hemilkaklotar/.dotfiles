#!/usr/bin/env bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

if [[ ! -z $(which dnf) ]]; then
	sudo dnf install -y eza zoxide
	sudo dnf install -y fzf
	sudo dnf copr enable atim/lazygit -y
	sudo dnf install lazygit -y
  sudo dnf install bat
elif [[ ! -z $(which apt-get) ]]; then
	sudo apt install -y zoxide
	cargo install eza
	sudo apt install -y fzf
  sudo apt-get install -y bash bc coreutils gawk git jq playerctl
	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
	curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
	tar xf lazygit.tar.gz lazygit
	sudo install lazygit /usr/local/bin
  rm -rf lazygit lazygit.tar.gz
  sudo apt install -y bat
  mkdir -p ~/.local/bin
  ln -s /usr/bin/batcat ~/.local/bin/bat
fi


if [[ ! -z $(which cargo) ]]; then
 echo "Info: Yazi file Manager Installing."
 cargo install --locked yazi-fm yazi-cli &
else 
 echo "Error: Cargo not installed \nSkiped: Installation of Yazi file manager"
fi
