# bash

My bash config with XDG Base Directory specification. [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)

## motivation

Ubuntu 24.04 LTS がリリースされて WSL2 でも利用可能になったので、式年遷宮的に 20.04 から移行することにした。

デフォルトシェルを乗り換えることも検討したが、結局のところ馴染んだ bash が使いやすいく、他のシェルには憧れ以上の強い思い入れがないので
再度 bash でやっていくことにした。その代わり、今まで雑に扱っていた管理方面を見直すことにした。

- [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html) があり
- [XDG Base Directory - ArchWiki](https://wiki.archlinux.jp/index.php/XDG_Base_Directory) を参考にしていて
- [旧 dotfiles](https://github.com/officel/dotfiles) から移行してみようってワケ
- fish がサポート済みになっていて羨ましかったのもある
- [この記事](https://hiphish.github.io/blog/2020/12/27/making-bash-xdg-compliant/) を見ていけるかな？って思ったんだけどコードにミスがあるので手直しした

## learn

- `~/.bash_login` を置くと `~/.profile` が処理されない。 -> [ファイルの読み込み順序](https://www.gnu.org/software/bash/manual/bash.html#Bash-Startup-Files)
