# For fedora
sudo dnf install golang
mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
source $HOME/.bashrc
go env GOPATH
