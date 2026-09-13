---
uchi: v1
create: 2026-09-07
---

# zzz_personal

- 個人設定を**最後**に置くように調整するためのファイル（000と対）
- `$HOME` 直下のファイルの管理や `$PATH` の設定追加など

## alias

- ちょっと便利な alias を置く

```sh {schema=alias}
alias curlh='curl -D - -s -o /dev/null -sSL'
alias diffs='diff -y --suppress-common-lines'
alias diffx='diff --exclude-from=${XDG_CONFIG_HOME:-$HOME/.config}/bash/diff_exclude'
alias fullpath='find `pwd` -maxdepth 1 -name'
alias greps='grep -v -e '\''^\s*#'\'' -e '\''^\s*$'\'''
alias myip='curl -s inet-ip.info'
alias mypath='echo $PATH | tr ":" "\n"'
alias pwgen='pwgen -c -n -B -1'
alias treex='tree --charset unicode -aNI "$(paste -sd"|" "${XDG_CONFIG_HOME:-$HOME/.config}/bash/tree_exclude" 2>/dev/null)"'
```

## environment

- `HISTxxx` は `history` コマンドの環境変数

```sh {schema=env}
export UCHI_zzz_personal=OK

export HISTCONTROL=ignoreboth
export HISTIGNORE=ls:ll:'ls -l':'ls -la':history:pwd:exit:which:w:task:gr:gst:gau:
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "
export HISTSIZE=1000
export HISTFILESIZE=2000
```

## Run Command

- 個人設定の bin をなるべく後に追加することで使用時に優先されるようにする
- `.`（カレントディレクトリ）は指定しない派閥に属しています
- case で PATH 中に指定のパスが含まれていない時だけ追加すると $PATH が混乱しない
- case を使って if を使わないのは POSIX 準拠らしいけど今のところそうなんだ、としか
- .cargo/env で同じことをしている
- @TODO PATH は環境変数なわけで、記載位置についてはもうちょっと検討

```sh {schema=rc}
# Rust
# 2024-09-15 cargo, install https://github.com/mitsuhiko/minijinja/tree/main/minijinja-cli
source $HOME/.cargo/env

# GO
case ":${PATH}:" in
    *:"$HOME/go/bin":*)
        ;;
    *)
        export PATH="$HOME/go/bin:$PATH"
        ;;
esac

# self
case ":${PATH}:" in
    *:"$HOME/.local/bin":*)
        ;;
    *)
        export PATH="$HOME/.local/bin:$PATH"
        ;;
esac
```

## function

- @TODO シェル関数の違いにも注意

```sh {schema=function}
# https://qiita.com/tawara_/items/0916eaec6ad09fce86a5
function clip() {
  { printf "\xff\xfe"; iconv -t UTF-16LE; } | clip.exe
}
```
