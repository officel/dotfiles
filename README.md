Dot Files
========

My public dot files.
--------------------

* .my.cnf : MySQL Client Tips
* .ssh/ : ssh config
* .tmux.conf : tmux config : 師匠( mutsuki99 )にいただいたもの
* .vimrc : vim
* ssh_config : ~/.ssh/config
* cheat : 簡易チートシート

usage
-----
<pre>
cd
git clone https://github.com/officel/dotfiles.git .dotfiles
cp -p .dotfiles.tmux-ssh.sh /your/path/bin/tmux-ssh.sh
ln -s .dotfiles/.tmux.conf .tmux.conf
ln -s .dotfiles/.vimrc .vimrc
cp -p .dotfiles/.my.cnf .my.cnf
echo ". ~/.dotfiles/cheat/env.bash" >> .bashrc
echo "alias c=cheat" >> .bashrc
cp -p .dotfiles/ssh_config .ssh/config
chmod 644 .ssh/config
</pre>
