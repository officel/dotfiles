---
uchi: v1
create: 2026-09-06
---

# zoxide

- [zoxide](https://github.com/ajeetdsouza/zoxide)
- `cd` の代替
- fzf とセット運用しましょう

## environment

```sh {schema=env}
export _ZO_EXCLUDE_DIRS="/tmp/*:/mnt/c/*:/mnt/d/*"
export _ZO_ECHO=1
```

## Run Command

- function z, zi と completion が処理されます
- see: `type z zi`

```sh {schema=rc}
eval "$(zoxide init bash)"
```
