Dot Files
========

My public dot files.
--------------------

* .my.cnf : MySQL Client Tips
* .ssh/ : ssh config
* .tmux.conf : tmux config : 師匠( mutsuki99 )にいただいたもの
* .vimrc : vim
* cheat : 簡易チートシート

usage
-----
<pre>
cd
git clone https://github.com/officel/dotfiles.git .dot
ln -s .dot/.tmux.conf .tmux.conf
ln -s .dot/.vimrc .vimrc
cp -p .dot/.my.cnf .my.cnf
echo ". .dot/cheat/env.bash" >> .bashrc
alias c=cheat
</pre>
