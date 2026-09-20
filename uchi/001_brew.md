---
uchi: v1
create: 2026-09-06
---

# 001_brew

- [Homebrew](https://brew.sh/ja/)
- パッケージマネージャー
- 主に `aqua` でインストールできないもの、aqua より先にインストールが必要なものを中心に管理
- `Brewfile` を参照

## install

- ホームページのトップにあるものと同じ

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## environment

- インストールの際に書き込めって出力されるアレ
- brew のパスや環境変数を設定している

```sh
# インストール後に表示される設定用のコマンド
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

- 環境差やインストールパスを吸収することにした
  - Intel Macでは `/usr/local`
  - Apple Silicon では `/opt/homebrew`
  - Linux/WSLでは `/home/linuxbrew/.linuxbrew`
  - ということなので、並べて対応してみることにした
- 正直冗長かもしれないが、クリーンな環境構築と学習の一環ということでひとつ

```sh {schema=env}
if ! type brew >/dev/null 2>&1; then
  for brew_path in \
    /usr/local/bin/brew \
    /opt/homebrew/bin/brew \
    /home/linuxbrew/.linuxbrew/bin/brew
  do
    if [ -x "$brew_path" ]; then
      eval "$("$brew_path" shellenv)"
      break
    fi
  done
fi
```
