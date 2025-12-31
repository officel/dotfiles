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
