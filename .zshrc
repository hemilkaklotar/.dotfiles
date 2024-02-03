[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git sudo docker fzf golang zsh-autosuggestions sudo web-search copyfile copybuffer dirhistory history jsontools)

source $ZSH/oh-my-zsh.sh

alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -alF --icons --color=always --group-directories-first'
alias la='eza -a --icons --color=always --group-directories-first'
alias l='eza -F --icons --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'

export DOTFILES="$HOME/.dotfiles"
export PATH="$DOTFILES/executables:$PATH"
export PATH="$DOTFILES/scripts/user_scripts:$PATH"

eval "$(zoxide init zsh)"

export PATH="$HOME/.spicetify:$PATH"
