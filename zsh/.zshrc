export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

FILEPATH=`readlink $HOME/.zshrc`
export DOTFILES_DIR=$(cd $(dirname $(dirname $FILEPATH)) && pwd)

include () {
    [[ -f "$1" ]] && source "$1"
}

include ~/.zplug/init.zsh
include /etc/profile
include $DOTFILES_DIR/zsh/zplug.zsh
include $DOTFILES_DIR/zsh/config.zsh
include ~/.zshrc.local
