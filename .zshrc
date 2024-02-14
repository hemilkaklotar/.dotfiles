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

alias cwall='feh --bg-fill "$(shuf -e -n1 $HOME/Pictures/Anime/*)"'
alias keymaps="setxkbmap \
  -model pc105 \
  -layout 'us(dvorak),us' \
  -option \
  -option grp:ctrl_space_toggle \
  -option compose:rwin"
export DOTFILES="$HOME/.dotfiles"
export PATH="$DOTFILES/executables:$PATH"
export PATH="$DOTFILES/scripts/user_scripts:$PATH"

eval "$(zoxide init zsh)"

export PATH="$HOME/.spicetify:$PATH"

# >>> conda initialize >>>
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
function act!() {
  [ -f 'bin/activate' ] && source bin/activate
  [ -f '.venv/bin/activate' ] && source .venv/bin/activate
  [ -f 'environment.yml' ] && conda activate $(cat environment.yml | grep name: | head -n 1 | cut -f 2 -d ':')
  [ -f 'environment.yaml' ] && conda activate $(cat environment.yaml | grep name: | head -n 1 | cut -f 2 -d ':')
  return 0
}
function act() {
  [ -z "$TMUX" ] && return 0
  act!
}
