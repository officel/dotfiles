---
uchi: false
create: 2026-09-10
---

# prek

- [prek](https://github.com/j178/prek)
- Alternative pre-commit
- インストールは `aqua`
- [prek を使ってみる ADR - alternative pre-commit -](https://zenn.dev/raki/articles/2025-10-19_prek_alternative_pre-commit)

## note

- [pre-commit](https://github.com/pre-commit/pre-commit) は `git` の hook manager
- husky(node), Lefthook(Go) などと同様に、git の hook を管理する（命名のググラビティがいいんだか悪いんだか）
- prek は rust 実装で単一バイナリ、高速、pre-commit との設定ファイルの互換性（移行容易性）などが特徴
- pre-commit が商業中心になった結果、コミュニティエコシステムが崩壊してしまったので prek へ移行した経緯がある
- 基本的な構造は各リポジトリに `.pre-commit-config.yaml` を置いて使う
- GitHub Actions でワークフローとしてまわす
- のニ点だけなんだけど、AI時代において低レイヤーの機械化はやりすぎると不便になるので注意が必要
- `.pre-commit-config.yaml` 自体は本家 pre-commit と互換性を保っているが、`prek.toml` で専用に書き直すこともできる
- `.pre-commit-config.yaml` 自体はこのリポジトリのルートディレクトリにもあるので参照

## 使い方

```sh
# 各リポジトリルートで設定を配置
$ prek install

# 全ファイルに対してチェック実行
$ prek run -a

# 設定等のバージョンアップ
$ prek update --freeze
```
