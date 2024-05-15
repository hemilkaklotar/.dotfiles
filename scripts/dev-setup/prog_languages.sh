#!/usr/bin/env bash
# Go Lang
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install golang -y
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt install golang -y
fi
mkdir -p $HOME/go
add_export_to_rc_file() {
    local rc_file="$1"
    local add_line="export GOPATH=$HOME/go"

    if ! grep -qF "$add_line" "$rc_file"; then
        echo "$add_line" >> "$rc_file"
        source "$rc_file"
        echo "Theme line added to $rc_file"
    else
        echo "Theme line already present in $rc_file"
    fi
}

add_export_to_rc_file "$HOME/.zshrc"
add_export_to_rc_file "$HOME/.bashrc"
go env GOPATH


# node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash # change the version number as per current version
source ~/.bashrc
nvm install --lts

# python
if [[ ! -z $(which dnf) ]]; then
  sudo dnf update -y
  sudo dnf install -y python3 python3-pip
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt update -y
  sudo apt install -y python3 python3-pip
fi

# rust
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install -y rust cargo rustfmt
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt install -y rustc cargo rustfmt
fi


