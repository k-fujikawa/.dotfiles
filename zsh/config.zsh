# ====  Setup essential environment variables  ====
export PATH=~/.dotfiles/bin:$PATH
export UID
export GID
export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

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

# ====  Setup anyenv  ====
if [ -e $HOME/.anyenv ]; then
    export PATH=$HOME/.anyenv/bin:$PATH
    eval "$(anyenv init -)"
fi

# ====  Default tmux session  ====
function ws() {
    tmux a -t ws || tmux new -s ws
}

# ====  symlink SSH_AUTH_SOCK  ====
agent="$HOME/.ssh/agent"
if [ -S "$SSH_AUTH_SOCK" ]; then
    case $SSH_AUTH_SOCK in
    /tmp/*/agent.[0-9]*)
        ln -snf "$SSH_AUTH_SOCK" $agent && export SSH_AUTH_SOCK=$agent
    esac
elif [ -S $agent ]; then
    export SSH_AUTH_SOCK=$agent
else
    echo "no ssh-agent"
fi

# ====  Hotfix: Tab completion eats a line  ====
# ----  https://github.com/sorin-ionescu/prezto/issues/1245  ----
function revert-expand-or-complete {
    zle expand-or-complete
}
zle -N expand-or-complete-with-indicator revert-expand-or-complete
