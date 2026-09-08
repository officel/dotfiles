---
uchi: v1
create: 2026-09-07
---

# 000_personal

- 個人設定を**最初**に置くように調整するためのファイル（zzzと対）
- 各スキーマ部分をなるべく先に書く（上書きされたり優先順位を下げられたりしてもいいもの）

## alias

- `ls` の alias は eza 等で置換されてよし

```sh {schema=alias}
alias l='ls -al'
alias ls='ls --group-directories-first'
alias ll='ls -l'
```

## environment

```sh {schema=env}
export UCHI_000_personal=OK
```
