---
uchi: v1
create: 2026-09-06
---

# direnv

- [direnv](https://github.com/direnv/direnv)
- ディレクトリ毎の環境変数等の管理をするシェルエクステンション
- 半年更新されてない？

## note

- `.envrc` ファイルで管理
- `.env` などの読み込み可（.envrc 内で `dotenv` と書くだけ）
- `gh auth switch -u USER_NAME` でディレクトリ毎にユーザー切り替えが便利（個人と職場のアカウントなど）
- `export GITHUB_TOKEN=$(gh auth token)` としておけばディレクトリ移動時に切り替えが自動化されて便利

## alias

- 基本的に自動だけど、新規作成や設定変更時には有効化を求められるのでこれを書いておくと便利

```sh {schema=alias}
alias da='direnv allow'
```

## Run Command

```sh {schema=rc}
eval "$(direnv hook bash)"
```

## 使用をやめたもの

### direnv で alias

- [direnvを使用して、同名のコマンドの挙動をディレクトリ毎に変更したい - eidera log](https://eidera.com/blog/2018/12/28/direnv_alias/)
- `$HOME/.direnvrc` として配置して使用する

```sh:~/.direnvrc
ALIASES_DIR=".direnv/aliases"

export_function() {
  local name=$1
  local alias_dir=$PWD/${ALIASES_DIR}
  mkdir -p "$alias_dir"
  PATH_add "$alias_dir"
  local target="$alias_dir/$name"
  if declare -f "$name" >/dev/null; then
    echo "#!/usr/bin/env bash" > "$target"
    declare -f "$name" >> "$target" 2>/dev/null
    echo "$name" '"$@"' >> "$target"
    chmod +x "$target"
  fi
}

clear_direnv_aliases() {
  local alias_dir=$PWD/${ALIASES_DIR}
  rm -rf $alias_dir/*
}
```

- 使用したいディレクトリの `.envrc` に記載しておくと使える

```sh:.envrc
clear_direnv_aliases
m (){
  make "$@"
}
export_function m
```

- task への置き換えで出番がなくなった
