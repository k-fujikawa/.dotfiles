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

# ====  Setup anyenv  ====
if [ -e $HOME/.anyenv ]; then
    export PATH=$HOME/.anyenv/bin:$PATH
    eval "$(anyenv init -)"
fi

# ====  Hotfix: Tab completion eats a line  ====
# ----  https://github.com/sorin-ionescu/prezto/issues/1245  ----
function revert-expand-or-complete {
    zle expand-or-complete
}
zle -N expand-or-complete-with-indicator revert-expand-or-complete
