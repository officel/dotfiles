if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export EDITOR=vi

# Prompt
export PS1='\W $ '

#for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# for k8s
source <(kubectl completion bash)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# go & goenv
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOENV_DISABLE_GOPATH=1
export GO111MODULE=on

# anyenv
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$HOME/.local/bin:$PATH"
eval "$(anyenv init -)"

# direnv
eval "$(direnv hook bash)"

# aws cli
complete -C '$HOME/.local/bin/aws_completer' aws

# packer
complete -C /home/linuxbrew/.linuxbrew/bin/packer packer
