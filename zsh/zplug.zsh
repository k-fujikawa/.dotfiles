zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
#
zplug "sorin-ionescu/prezto"
zplug "modules/prompt", from:prezto

zplug "mollifier/anyframe"

zplug "plugins/git", from:oh-my-zsh
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "powerline/powerline", use:"powerline/bindings/zsh"

if ! zplug check --verbose; then
    echo; zplug install
fi

zplug load

source $DOTFILEDIR/zsh/plugins/prezto.zsh
source $DOTFILEDIR/zsh/plugins/anyframe.zsh
