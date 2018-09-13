# ====  Setup PATH  ====
export PATH=~/.dotfiles/bin:$PATH
export UID
export GID

# ====  Setup pushd  ====
setopt auto_pushd
setopt auto_cd
setopt pushd_ignore_dups

# ====  Setup history  ====
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt share_history
setopt hist_save_nodups
setopt hist_ignore_all_dups

# ====  Setup keybinds  ====
# ----  anyframe  ----
bindkey '^xb' anyframe-widget-cdr
bindkey '^x^b' anyframe-widget-checkout-git-branch

bindkey '^xr' anyframe-widget-execute-history
bindkey '^x^r' anyframe-widget-execute-history

bindkey '^xi' anyframe-widget-put-history
bindkey '^x^i' anyframe-widget-put-history

bindkey '^xg' anyframe-widget-cd-ghq-repository
bindkey '^x^g' anyframe-widget-cd-ghq-repository

bindkey '^xk' anyframe-widget-kill
bindkey '^x^k' anyframe-widget-kill

bindkey '^xe' anyframe-widget-insert-git-branch
bindkey '^x^e' anyframe-widget-insert-git-branch

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ====  Setup anyenv  ====
if [ -e $HOME/.anyenv ]; then
    export PATH=$HOME/.anyenv/bin:$PATH
    eval "$(anyenv init -)"
fi
