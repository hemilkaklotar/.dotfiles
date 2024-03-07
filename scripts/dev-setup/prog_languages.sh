# Go Lang
if [[ ! -z $(which dnf) ]]; then
  sudo dnf install golang -y
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt install golang -y
fi
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
source $HOME/.bashrc
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
  sudo dnf install -y rust cargo
elif [[ ! -z $(which apt-get) ]]; then
  sudo apt install -y rustc cargo
fi


