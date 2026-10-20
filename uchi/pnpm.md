---
uchi: v1
create: 2026-09-07
---

# pnpm

- [pnpm](https://github.com/pnpm/pnpm)
- node の package manager
- インストールは `aqua` に任せる

## note

- npm -> yarn -> pnpm
- v12 で rust 実装になった
- `pnpm setup` を実行すると aqua でインストールされてる pnpm だとエラーになってしまうっぽい
- AI に聞いたらパスだけ指定すればいけるってことだったのでそうした

```sh
export PNPM_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/pnpm"
export PATH="$PATH:$PNPM_HOME/bin"

pnpm bin -g
pnpm add -g <使いたいパッケージ>
```

## alias

```sh {schema=alias}
alias pn='pnpm'
alias pna='pnpm add'
alias pnad='pnpm add --save-dev'
alias pnag='pnpm add --global'
alias pnb='pnpm build'
alias pnd='pnpm dev'
alias pne='pnpm exec'
alias pnf='pnpm --recursive --filter'
alias pni='pnpm install'
alias pnls='pnpm list'
alias pnlsg='pnpm list --global'
alias pnr='pnpm run'
alias pnrm='pnpm remove'
alias pnrmg='pnpm remove --global'
alias pns='pnpm start'
alias pnsa='pnpm android'
alias pnsi='pnpm ios'
alias pnsw='pnpm web'
alias pnt='pnpm test'
alias pnup='pnpm update'
alias pnupg='pnpm update --global'
alias pnvm='pnpm env use --global'
alias pnw='pnpm why'
alias pnx='pnpm dlx'
alias aliaspn='alias | grep "pnpm"'
```

## environment

```sh {schema=env}
export PNPM_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/pnpm"
export PATH="$PNPM_HOME/bin:$PATH"
```
