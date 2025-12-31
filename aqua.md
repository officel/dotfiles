# .config/aqua

- [CLI バージョン管理ツールの aqua を使うようになって少し経ったので少しまとめておく](https://zenn.dev/raki/articles/2024-05-16_aqua)

## aqua.yaml のパッケージをソート

```bash
# yq も aqua でインストーつできるので入れておくといい
yq '.packages |= sort_by(.name | split("/") | .[1])' aqua.yaml
```

- 管理に迷ったらソートしておくと見やすい（かも）
- 関連ツール毎にまとめたい時は [Split the list of packages](https://aquaproj.github.io/docs/guides/split-config) を使うとよさげ

## .bashrc

```bash
# cli version manager aqua
export PATH="$(aqua root-dir)/bin:$PATH"
export AQUA_GLOBAL_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}/aqua/aqua.yaml
```

## alias

```bash
alias aq='aqua'
alias aqcd="cd ${XDG_CONFIG_HOME:-$HOME/.config}/aqua/"
alias aqgi='aqua generate -i -o $AQUA_GLOBAL_CONFIG'
alias aqia='aqua install --all'
alias aqli='aqua list --installed --all | sort'
alias aqup='aqua update'
```

## task

```bash
$ aqcd
aqua $ task
task: Available tasks for this project:
* aqua:alias:          show alias for aqua                              (aliases: aa)
* aqua:git:            auto git, use -- COMMIT TITLE                    (aliases: ag)
* aqua:packages:       random package from aqua.yaml                    (aliases: ap)
* aqua:update:         Run aqua update, install, list for globally      (aliases: au)

reminder this package cli/cli@v2.76.2

aqua $ task ls
task: Available tasks for this project:
* _git:
* _git:auto:
* _git:gh:
* aqua:alias:          show alias for aqua                              (aliases: aa)
* aqua:git:            auto git, use -- COMMIT TITLE                    (aliases: ag)
* aqua:packages:       random package from aqua.yaml                    (aliases: ap)
* aqua:update:         Run aqua update, install, list for globally      (aliases: au)
* default:
* util:list:                 (aliases: ul, ls)
* util:summary:              (aliases: us, la)

aqua $ task au
<omit> aqua up が実行される

aqua $ task ag
<omit> git add aqua.yaml から commit, push, gh pr create, gh pr merge まで自動化
```

## direnv

- .direnv と .env で GitHub token を設定した
- [Tips ｜ aqua CLI Version Manager 入門](https://zenn.dev/shunsuke_suzuki/books/aqua-handbook/viewer/tips#github_token%2C-aqua_github_token-%E3%82%92%E8%A8%AD%E5%AE%9A%E3%81%97%E3%81%A6-rate-limit-%E3%82%92%E5%9B%9E%E9%81%BF%E3%81%99%E3%82%8B)

# related my projects

- [officel/config_aqua: .config/aqua](https://github.com/officel/config_aqua)
- [officel/config_bash: .config/bash](https://github.com/officel/config_bash)
- [officel/config_git: .config/git](https://github.com/officel/config_git)
- [officel/config_task: .config/task](https://github.com/officel/config_task)
