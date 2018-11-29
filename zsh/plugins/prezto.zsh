zstyle ':prezto:load' pmodule \
  'environment' \
  'terminal' \
  'editor' \
  'history' \
  'directory' \
  'spectrum' \
  'utility' \
  'completion' \
  'git' \
  'docker' \
  'syntax-highlighting' \
  'history-substring-search' \
  'prompt'
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:prompt' theme 'sorin'

# Overwrite default theme
source ~/.zplug/repos/sorin-ionescu/prezto/init.zsh
LIGHTBLUE="\[\033[0;34m\]"
PROMPT='${SSH_TTY:+"%F{9}%n%f%F{7}@%f%F{3}%m%f "}%F{12}${_prompt_sorin_pwd}%(!. %B%F{1}#%f%b.)${editor_info[keymap]} '
RPROMPT+=" %F{green}[%F{green}%D{%H:%M:%S}%F{green}]%f"
