---
uchi: v1
create: 2026-09-06
---

# 005_aqua

- [aquaproj/aqua](https://github.com/aquaproj/aqua)
- バージョンマネージャーに使用している
- 環境によっては mise も使用している

## note

- ツールの削除は `aqua rm -i` 等でパッケージのリンク等を消した後、`aqua.yamlP からは手動で削除する必要がある

## alias

- 設定しているが、たいていの場合 task で処理するようにしているのであまり出番がない

```sh {schema=alias}
alias aliasaq='alias | grep aqua'
alias aq='aqua'
alias aqcd="cd ${XDG_CONFIG_HOME:-$HOME/.config}/aqua/"
alias aqgi='aqua generate -i -o $AQUA_GLOBAL_CONFIG'
alias aqia='aqua install --all'
alias aqli='aqua list --installed --all | sort'
alias aqup='aqua update'
```

## environment

- @TODO パスを含む設定値の場合に環境差を吸収する必要性？
- `.config/aqua/aqua.yaml` ではないパスに置きたいなど

```sh {schema=env}
export AQUA_GLOBAL_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}/aqua/aqua.yaml
```

## rc

- aqua への PATH は brew の前に必要なので brew の rc が走った後に実行する必要がある
- これは aqua でインストールしたツールを先に探し、なかったら brew を探す、ということ

```sh {schema=rc}
export PATH="$(aqua root-dir)/bin:$PATH"
if command -v aqua &> /dev/null; then
    eval "$(aqua completion bash)"
fi
```
