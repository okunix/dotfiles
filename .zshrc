export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=

echo_branch() {
    git status &> /dev/null || return
    branch="$(git branch --show-current)"
    diff="$(git diff --quiet || echo '*')" 
    echo "%F{magenta}${diff}${branch:-!DETATCHED}%f "
}
setopt PROMPT_SUBST
PROMPT="%B%F{green}%F{blue}%~ \$(echo_branch)%(?.%F{white}.%F{red}%? )$%f%b "
RPROMPT="%F{8}${SSH_TTY:+%n@%m}%f"

plugins=(git vi-mode)

VI_MODE_SET_CURSOR=true
export KEYTIMEOUT=1

zmodload -i zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases
source <(fzf --zsh)
