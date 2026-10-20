---
uchi: v1
create: 2026-10-17
---

# tfstylus

- [tfstylus](https://github.com/officel/tfstylus)

## note

- terraform のスタイルを統一する自作ツール
- 今のところ brew でインストール

## alias

- terraform の alias とバッティングしないように注意

```sh {schema=alias}
alias tfsp="tfstylus plan --recursive"
alias tfsa="tfstylus apply --recursive --diff"
```
