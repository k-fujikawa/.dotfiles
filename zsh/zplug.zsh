zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug "sorin-ionescu/prezto"
zplug "modules/prompt", from:prezto

zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "junegunn/fzf", as:command, use:bin/fzf-tmux
zplug "mollifier/anyframe"

zplug "plugins/git", from:oh-my-zsh
zplug "x-motemen/ghq", as:command, from:gh-r
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "powerline/powerline", use:"powerline/bindings/zsh"

if ! zplug check --verbose; then
    echo; zplug install
fi

zplug load

source $DOTFILEDIR/zsh/plugins/prezto.zsh
source $DOTFILEDIR/zsh/plugins/anyframe.zsh
