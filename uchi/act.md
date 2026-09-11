---
uchi: false
create: 2026-09-11
---

# act

- [act](https://github.com/nektos/act)
- GitHub Actions の workflow をローカルで実行するツール
- `nektos/act` として `aqua/aqua_fav.yaml` で管理

## 設定

- [Usage guide - act - User Guide | Manual | Docs | Documentation](https://nektosact.com/usage/index.html?highlight=actrc#configuration-file)

> Act can be configured using .actrc files. All found arguments will be parsed and appended to a list,
> in order of: .actrc as per the XDG spec, .actrc in HOME directory, .actrc in invocation directory, cli arguments.

- `~/.config/act/actrc` # XDG_CONFIG_HOME による
- `~/.actrc` # ユーザーホームディレクトリ
- `./.actrc` # 実行時ディレクトリ
- 実行時の引数渡し（ファイルじゃなくて変数を渡せってことらしい）
- 上から読み込んで上書きする

## その他

- ドキュメント的にはプライベートリポジトリに書いていて二重管理がは面倒になるのでいったん後回し
