Dot Files
========

My public dot files.
--------------------

* .ssh/ : ssh config (example)
* alias : my alias
* bash_profile : (example)
* bashrc :
* history : set env for history
* my.cnf : MySQL Client Tips
* peco : peco functions
* ssh_config : ~/.ssh/config
* tmux.conf : tmux config : 師匠( mutsuki99 )にいただいたもの
* vimrc : vim

usage
-----

```
cd
git clone https://github.com/officel/dotfiles.git .dotfiles

# 管理下から剥がしちゃうもの
cp -p .dotfiles/my.cnf .my.cnf
cp -p .dotfiles/ssh_config .ssh/config
cp -p .dotfiles/tmux-ssh.sh /your/path/bin/tmux-ssh.sh
cp -p .dotfiles/bash_profile ~/.bash_profile

# 管理下に置いておくもの
ln -s .dotfiles/tmux.conf .tmux.conf
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/bashrc .bashrc
```

* install id_rsa (manual)
* fix git config remote.origin.url after clone
* https://github.com/officel/config_git

