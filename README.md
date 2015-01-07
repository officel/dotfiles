Dot Files
========

My public dot files.
--------------------

* .my.cnf : MySQL Client Tips
* .ssh/ : ssh config
* .tmux.conf : tmux config : 師匠( mutsuki99 )にいただいたもの
* cheat : 簡易チートシート

usage
-----

git clone https://github.com/officel/dotfiles.git .dotfiles
ln -s .dotfiles/.tmux.conf .tmux.conf
cp -p .dotfiles/.my.cnf .my.cnf
echo ". .dotfiles/cheat/env.bash" >> .bashrc
alias c=cheat
