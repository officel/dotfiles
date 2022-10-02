# ~/.bashrc

# key bind on bash
# ctrl+fで次の単語に移動
bind '"\C-f": forward-word'
# ctrl+bで前の単語に移動
bind '"\C-b": backward-word'

source $HOME/.dotfiles/alias
source $HOME/.dotfiles/history
source $HOME/.dotfiles/peco
source $HOME/.dotfiles/bash_functions

# for WSL
if [[ "$(uname -r)" == *microsoft* ]]; then
  source $HOME/.dotfiles/alias_wsl
fi

# ssh-agent for git commit ssh signature verification
if [ -z "${SSH_AGENT_PID}" ]; then
    eval $(ssh-agent) 1>/dev/null
fi

