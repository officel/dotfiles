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

