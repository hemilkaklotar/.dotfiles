mkdir -p $HOME/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O $HOME/miniconda3/miniconda.sh
bash $HOME/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf $HOME/miniconda3/miniconda.sh
$HOME/miniconda3/bin/conda init bash
$HOME/miniconda3/bin/conda init zsh
source $HOME/.zshrc
