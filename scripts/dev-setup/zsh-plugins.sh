#!/usr/bin/env bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

if [[ ! -z $(which dnf) ]]; then
	sudo dnf install -y eza zoxide
	sudo dnf install -y ranger
	sudo dnf install -y fzf
	sudo dnf copr enable atim/lazygit -y
	sudo dnf install lazygit -y
elif [[ ! -z $(which apt-get) ]]; then
	sudo apt install -y ranger
	sudo apt install -y zoxide
	cargo install eza
	sudo apt install -y fzf
  sudo apt-get install -y bash bc coreutils gawk git jq playerctl
	LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
	curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
	tar xf lazygit.tar.gz lazygit
	sudo install lazygit /usr/local/bin
fi
