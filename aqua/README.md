# aqua

- [CLI バージョン管理ツールの aqua を使うようになって少し経ったので少しまとめておく](https://zenn.dev/raki/articles/2024-05-16_aqua)

## tl;dr

```bash
# このリポジトリのルートディレクトリ（このファイルのひとつ上のディレクトリ）
dotfiles $ pwd
/home/raki/officel/dotfiles

# aqua の設定は XDG_BASE_DIRECTORY の XDG_CONFIG_HOME/aqua に置いてある、ということ
dotfiles $ ls -l ~/.config/aqua
lrwxrwxrwx 1 raki raki 32  1月  2 02:56 /home/raki/.config/aqua -> /home/raki/officel/dotfiles/aqua

# 中身はこのディレクトリ
dotfiles $ ls -l ~/.config/aqua/
合計 16
-rwxrwxrwx 1 raki raki 2823 12月 31 13:34 README.md
-rwxrwxrwx 1 raki raki 4470  1月  3 03:58 Taskfile.yml
-rwxrwxrwx 1 raki raki 1683  1月  3 03:59 aqua.yaml

# どこからでも task は呼べる
dotfiles $ t -t aqua/Taskfile.yml
task: Available tasks for this project:
* alias:          show alias for aqua                              (aliases: aa)
* git:            auto git, use -- COMMIT TITLE                    (aliases: ag)
* packages:       random package from aqua.yaml                    (aliases: ap)
* update:         Run aqua update, install, list for globally      (aliases: au)

reminder this package kubernetes/kubectl@v1.35.0
```

## aqua.yaml のパッケージをソート

```bash
# yq も aqua でインストーつできるので入れておくといい
yq '.packages |= sort_by(.name | split("/") | .[1])' aqua.yaml
```

- 管理に迷ったらソートしておくと見やすい（かも）
- 関連ツール毎にまとめたい時は [Split the list of packages](https://aquaproj.github.io/docs/guides/split-config) を使うとよさげ

## .bashrc @todo 整理予定

```bash
# cli version manager aqua
export PATH="$(aqua root-dir)/bin:$PATH"
export AQUA_GLOBAL_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}/aqua/aqua.yaml
```
