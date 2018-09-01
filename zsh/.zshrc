source /etc/profile
FILEPATH=`readlink $HOME/.zshrc`
export DOTFILEDIR=$(cd $(dirname $(dirname $FILEPATH)) && pwd)
source $DOTFILEDIR/zsh/zshrc.base
source $DOTFILEDIR/zsh/zshrc.env
if [ -e ~/.zshrc.local  ]; then
    source ~/.zshrc.local
fi
if [ "$(uname)" = "Darwin" ]; then
    source $DOTFILEDIR/zsh/zshrc.mac
else
    source $DOTFILEDIR/zsh/zshrc.linux
fi
