---
uchi: v1
create: 2026-09-06
---

# eza

- [eza](https://github.com/eza-community/eza)
- `ls` の代替

## alias

- 既存の ls を壊さないようにしている
- 代替ツールなので置き換えても構わない

```sh {schema=alias}
alias   l='eza -la --icons --git --group-directories-first'
alias lzs='eza     --icons --git --group-directories-first'
alias lzt='eza -la --icons --git --tree --git-ignore'
```
