# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="amuse"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git sudo docker fzf golang zsh-autosuggestions sudo web-search copyfile copybuffer dirhistory history jsontools)

source $ZSH/oh-my-zsh.sh

## EZA ## COLORED LS MODULE ##
#
# LS Command remap
#
##############################

alias ls='eza --icons --color=always --group-directories-first'

alias ll='eza -alF --icons --color=always --group-directories-first'

alias la='eza -a --icons --color=always --group-directories-first'

alias l='eza -F --icons --color=always --group-directories-first'

alias l.='eza -a | egrep "^\."'


export DOTFILES="$HOME/.dotfiles"
export PATH="$DOTFILES/executables:$PATH"
export PATH="$DOTFILES/scripts/user_scripts:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"
