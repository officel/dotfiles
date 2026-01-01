# 環境構築手順

## tl;dr

- Homebrewで最低限の準備
- aquaでツール類の準備
- task で設定

## Homebrew

```bash
# homebrew のインストール（Mac の場合は GitHub のリポジトリから最新リリースを使うほうがいいようだ）
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# バージョン
brew --version

# ざっくり一般的な運用手順
brew update
brew outdated
brew upgrade
brew cleanup
brew doctor

# bundle からインストール
cat Brewfile
brew bundle install
```

## aqua

- brewでインストール（Brewfileに入れてある）
- 新環境はtaskfileが入っていない（このaquaでインストールする）ので `aqua install --all` でインストール

## task

- aqua でインストール（aqua.yamlに入れてある）
- `task link` で必要なシンボリックリンクをはる

## XDG_BASE_DIRECTORY for bash

- たいていのLinuxディストリビューションでは、`/etc/profile` が読み込まれてシェルが設定される
- その中で `/etc/profile.d/` 下のファイルが自動的に読み込まれる
- そこに所定のファイルを配置して、`~/.config/bash/` を使用するように設定する
- 正確には `~/.config/bash/bash_profile` と `~/.config/bash/bashrc` を読み込ませている
- 設定方針にもよるがbashrcだけでもそんなに困らない
- ディレクトリ的に特権が必要なので手動

```bash
dotfiles $ sudo ln -s -b "$(pwd)/bash/etc_profile.d_bash_xdg.sh" /etc/profile.d/bash_xdg.sh
dotfiles $ ls -l /etc/profile.d/bash_xdg.sh*
# 問題なければバックアップファイル（~で終わっているほう）を削除
# task link でこのあたりの表現済
```
