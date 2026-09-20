# uchi

- [officel/uchi: Dotfiles Literate Configuration CLI tool.](https://github.com/officel/uchi)
- 利用しているツールの情報と設定をドキュメントとして保存し、設定を出力するためのツールです

## 書き方例

- `.bashrc` 等に `uchi gen` で生成するディレクトリ（`dist`）を参照させて読み込ませる
- `rc` と `profile` を使い分けたい場合は、読み込みを分ければOK
- 今のところ正確に使い分けたい要件が自分の中にないので全読み込み

```bash:.bashrc
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}

[[ -f "$XDG_CONFIG_HOME/uchi/env" ]]       && source "$XDG_CONFIG_HOME/uchi/env"
[[ -f "$XDG_CONFIG_HOME/uchi/rc" ]]        && source "$XDG_CONFIG_HOME/uchi/rc"
[[ -f "$XDG_CONFIG_HOME/uchi/profile" ]]   && source "$XDG_CONFIG_HOME/uchi/profile"
[[ -f "$XDG_CONFIG_HOME/uchi/alias" ]]     && source "$XDG_CONFIG_HOME/uchi/alias"
[[ -f "$XDG_CONFIG_HOME/uchi/functions" ]] && source "$XDG_CONFIG_HOME/uchi/functions"
```

### env(environment)

- 主に環境変数を設定する
- `PATH` は設定の仕方に依らずなるべくここに寄せる
- `export` もここで設定する

### rc(Run Command)

- `completion` はなるべくここに寄せる
- `eval()` もここで設定する（PATHを設定するものを除く）

### profile

- 個人用の設定
- rc と profile を書き分けたい場合に使用してよい
- ログイン時に1回設定されればいいものを切り分けておくといいでしょう
- 個人的には今のところ `git` でしか使ってないかも

### alias

- `alias` を設定する
- ツール毎に管理できてとても便利

### functions

- `function` を設定する
- 定義にもよると思うけど、できるだけ代替手段を探したほうがいいかもしれない
