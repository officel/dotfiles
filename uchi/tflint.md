---
uchi: false
create: 2026-09-06
---

# tflint

- [tflint](https://github.com/terraform-linters/tflint)
- terraform のリンター
- インストールは `aqua` に任せている
- terraform を扱うリポジトリではほぼ必須
- [これから始める tflint](https://zenn.dev/terraform_jp/articles/2025-11-03_terraform_tflint)

## note

- terraform のコード自体よりも、Provider に対応した部分でのルールが勉強になる
- なるべく早期から対応しておかないと、あとでつらい
- 設定ファイル中に記載する Provider 用プラグインのバージョンアップがちょいちょい漏れるので注意
- ちょうどいい alias がない（tfd 等は destroy とぶつかるなど）、pre-commit や CI で自動化するため、ローカルで単独で実行することがあまりない、などの理由で設定情報がない

## .tflint.hcl

```hcl
# https://github.com/terraform-linters/tflint/blob/master/docs/user-guide/config.md
config {
  format = "compact"
}

# https://github.com/terraform-linters/tflint-ruleset-terraform/blob/main/docs/configuration.md
plugin "terraform" {
  enabled = true
}

# https://github.com/terraform-linters/tflint-ruleset-azurerm
plugin "azurerm" {
  enabled = true
  version = "0.32.0"
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# ルールを ignore したい場合
rule "terraform_typed_variables" {
  # typed variables are required
  # variables を丁寧に書き直す際に有効にしてください
  enabled = false
}
```
