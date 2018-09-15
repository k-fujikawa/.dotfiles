FILEPATH=`readlink $HOME/.zshrc`
export DOTFILEDIR=$(cd $(dirname $(dirname $FILEPATH)) && pwd)

include () {
    [[ -f "$1" ]] && source "$1"
}

include ~/.zplug/init.zsh
include /etc/profile
include $DOTFILEDIR/zsh/zplug.zsh
include $DOTFILEDIR/zsh/config.zsh
