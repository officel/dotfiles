cheat sheets for cli shell edition.
====

コマンドラインで使えるチートシートのシェル版。お遊びです。

## copy from https://github.com/officel/cheat

2015/01/07 ちゃんと使おうかなということでこっちに移籍させた

## Description

[cheat](https://github.com/chrisallenlane/cheat) のシェル版を遊びで作ってみた。

あくまで遊び。シェルでどのくらい遊べるかちょっと試したかっただけ。

## Usage

cheat [-l] [-e|-c][ TARGET]

$ cheat または $ cheat -l で一覧。

$ cheat -e TARGET または -c TARGET で TARGET の編集または作成（どっちも同じ）

$ cheat TARGET で TARGET を表示

## Install
<pre>
$ cd ~
<del>$ git clone https://github.com/officel/cheat.git .cheat</del>
$ . .dot/cheat/env.bash   # .bashrc にでも書いておくとよい
</pre>

cheat/sheets フォルダにテキストファイルを置くだけ。

[cheat](https://github.com/chrisallenlane/cheat) からファイルを持ってくるには、 .cheat/sheets で、

<pre>
$ wget --no-check-certificate  https://raw.githubusercontent.com/chrisallenlane/cheat/master/cheat/cheatsheets/git
</pre>

こんな感じでもらってきても可。

もちろん本家をそのまま使うほうが手っ取り早いし内容もしっかりしてる。

## Contribution

sheets を日本語で書いてPRして！

## Licence

[MIT](https://github.com/tcnksm/tool/blob/master/LICENCE)

## Author

Y.Nishimura.


## TODO

* コマンド類を変数化してまとめる

* ホームディレクトリ、シートディレクトリを環境変数から拾えるようにする

* bash以外でテスト

* そもそも中身をちゃんと書けよｗ

* Syntax Highlighting できるかな？

  see [Source-highlight](http://www.gnu.org/software/src-highlite/)

* Autocompletion できるかな？

  google "complete" or "bash_completion" or see /etc/bash_completion
