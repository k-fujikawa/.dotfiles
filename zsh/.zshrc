export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

FILEPATH=`readlink $HOME/.zshrc`
export DOTFILEDIR=$(cd $(dirname $(dirname $FILEPATH)) && pwd)

include () {
    [[ -f "$1" ]] && source "$1"
}

include ~/.zplug/init.zsh
include /etc/profile
include $DOTFILEDIR/zsh/zplug.zsh
include $DOTFILEDIR/zsh/config.zsh
include ~/.zshrc.local

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
