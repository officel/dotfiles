---
uchi: "v1"
create: 2026-09-11
---

# GitHub Copilot

- [GitHub Copilot CLI](https://github.com/github/copilot-cli)
- ターミナルから GitHub Copilot を利用する CLI
- `github/copilot-cli` として `aqua/aqua.yaml` で管理する

## note

- GitHub の認証情報やプロンプトの内容を設定ファイルへ保存しない

## alias

```sh {schema=alias}
alias coprev='copilot -p "/review-staged-diff" "$@"'
```

# スキルのコマンド呼び出し

- 次のような function にすれば、コマンドラインからスラッシュ呼び出しが可能になる
- uchi では今のところ POSIX 準拠になるように制限しているので、`/` 始まりは許可していない（ために使えない）
- `-p` 呼び出しはインタラクティブに許可を与えることができなくて、しばしばエラーになるので、allow をつけることになった

```sh {schema=function}
ggcommit() (
  repo_root=$(git rev-parse --show-toplevel) || return
  git_dir=$(git rev-parse --absolute-git-dir) || return
  cd "$repo_root" || return

  copilot \
    --add-dir "$git_dir" \
    --allow-tool='shell(git rev-parse:*)' \
    --allow-tool='shell(git diff:*)' \
    --allow-tool='shell(printf)' \
    --allow-tool="write($git_dir/copilot-commit-message.txt)" \
    -p "/gen-git-commit"
)
```
