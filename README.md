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
