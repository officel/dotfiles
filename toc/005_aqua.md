---
uchi: v1
create: 2026-09-06
---

# 005_aqua

- [aquaproj/aqua](https://github.com/aquaproj/aqua)
- バージョンマネージャーに使用している
- 環境によっては mise も使用している

## note

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

## profile

```sh {schema=profile}
export PATH="$(aqua root-dir)/bin:$PATH"
if command -v aqua &> /dev/null; then
    eval "$(aqua completion bash)"
fi
```
