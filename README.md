Dot Files
========

My public dot files.
--------------------

* .ssh/ : ssh config (example)
* gitconfig : git config global
* gitignore_global : git ignore global
* my.cnf : MySQL Client Tips
* ssh_config : ~/.ssh/config
* tmux.conf : tmux config : 師匠( mutsuki99 )にいただいたもの
* vimrc : vim

usage
-----
<pre>
cd
git clone https://github.com/officel/dotfiles.git .dotfiles

# 管理下から剥がしちゃうもの
cp -p .dotfiles/my.cnf .my.cnf
cp -p .dotfiles/ssh_config .ssh/config
cp -p .dotfiles/tmux-ssh.sh /your/path/bin/tmux-ssh.sh

# 管理下に置いておくもの
ln -s .dotfiles/tmux.conf .tmux.conf
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/gitconfig .gitconfig
ln -s .dotfiles/gitignore_global .gitignore_global

</pre>

* install id_rsa (manual)
* fix git config remote.origin.url after clone

