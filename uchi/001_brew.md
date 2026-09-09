---
uchi: v1
create: 2026-09-06
---

# 001_brew

- brew をパッケージマネージャーにしている
- aqua でインストールできないもの、aqua より先にインストールが必要なものを中心に管理
- @TODO インストールや設定方法について別途検討
- 結合されるファイルはファイル名でソートされるので先に書きたいものは番号ファイル名で対応

## Run Command

- インストールの際に書き込めって出力されるアレ
- brew のパスを設定する
- @TODO このままだと環境差やインストールパスが吸収できないので要検討

```sh {schema=rc}
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```
