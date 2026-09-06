---
uchi: v1
create: 2026-09-07
---

# fzf

- [fzf](https://github.com/junegunn/fzf)
- インストールは `aqua` にお任せ
- `zoxide` とセット運用だったので使い始めた

## note

- fzf is a general-purpose command-line fuzzy finder and an interactive terminal toolkit.
- 便利なコマンドラインでの選択ツールって言えばいいの？
- コマンドの間に挟んで、出力結果から選択した結果を次のコマンドに渡せる
- `task` や `git` や `kubectl` で便利に使わせてもらっている

## Run Command

```sh {schema=rc}
eval "$(fzf --bash)"

# https://github.com/lincheney/fzf-tab-completion
source ${XDG_CONFIG_HOME:-$HOME/.config}/bash/fzf-bash-completion.sh
bind -x '"\t": fzf_bash_completion'
```

- `eval()` は標準のほう
- tab comp はなんの経緯でいれたか忘れた。。。
- どこに引っかかっていれたんだっけ
- @TODO この手のやつは書式変換ではどうにもできないのでシェルのタイプを固定するメタデータが必要になるな
- README に記載していた手順（rawファイルをダウンロードしておいてそれを食ってる。`.gitignore` に追加済）

```bash
# see .gitignore
wget https://raw.githubusercontent.com/lincheney/fzf-tab-completion/refs/heads/master/bash/fzf-bash-completion.sh
```
