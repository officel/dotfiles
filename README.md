# dotfiles

- 2026年からのdotfiles管理
- [これまでの履歴](./docs/history.md)

## 方針

- dotfile自体の管理とシンボリックリンクによる配置をメインワークとする
- 分割していたリポジトリを再結合して一元管理する

  - タスク管理を[Task](https://taskfile.dev/)にする
  - パッケージ管理を[Homebrew](https://brew.sh/ja/)にする
  - バージョンマネージャーを[aqua](https://aquaproj.github.io/)にする
  - Ubuntu 24.04 on Windows 11 + WSL2でbashをメインにする（既存のまま）
  - 新環境構築時にksh対応を検討する

## uchi 開発中

- [officel/uchi: Dotfiles Literate Configuration CLI tool.](https://github.com/officel/uchi)
- リテレートプログラミングを設定管理に応用したリレテートコンフィグレーションの実装です
- `./toc/` ディレクトリで使用しているツールの説明や、設定をツール毎のドキュメントファイルとして管理して、設定を `./dist/` ディレクトリに生成し、`.bashrc` 等で読み込むようにします（未）
- 現時点では `{{schema=xxx}}` で定義されたコードフェンスをファイルに出力しているだけですが、将来的に各シェルへの変換機能を持たせるなどして、dotfiles 管理を楽にしたい
