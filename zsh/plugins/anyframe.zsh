# ====  Setup keybinds  ====
# ----  anyframe  ----
bindkey '^r' anyframe-widget-put-history
bindkey '^g' anyframe-widget-cd-ghq-repository
bindkey '^k' anyframe-widget-kill
bindkey '^b' anyframe-widget-checkout-git-branch

bindkey '^xc' anyframe-widget-cdr
bindkey '^xe' anyframe-widget-insert-git-branch
bindkey '^xs' anyframe-widget-select-widget

bindkey '^[[A' history-substring-search-up	
bindkey '^[[B' history-substring-search-down

export FZF_DEFAULT_OPTS='--reverse --no-sort'
