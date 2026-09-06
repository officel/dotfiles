---
uchi: v1
create: 2026-09-06
---

# terraform

- [terraform](https://github.com/hashicorp/terraform)
- インストールは `tfenv` を使用している
- `aqua` を使用することもできる
- `terraform-docs` や `tflint`、`trivy` も参照

## note

- 言わずと知れた IaC ツール
- 宣言的であることが重要で、ロジックを持ち込まないようにするのが筋
- ロジック持ち込んでやるなら Pulumi や CDK などを使えばよろし
- [terraform-jp | Zenn](https://zenn.dev/p/terraform_jp)

## alias

```sh {schema=alias}
alias aliastf='alias | grep "terraform"'
alias tf='terraform'
alias tfa='terraform apply'
# terraform destroy (tfd) は頻繁に叩かないし叩くべきでもないので alias にしないことにしている
alias tfe='terraform init --upgrade && terraform fmt && terraform plan'
alias tff='terraform fmt'
alias tfi='terraform init'
alias tfiu='terraform init --upgrade'
alias tfir='terraform init -reconfigure'
alias tfo='terraform output'
alias tfp='terraform plan'
alias tfq='terraform query'
alias tfs='terraform state'
alias tft='terraform test'
alias tfv='terraform version'
alias tfva='terraform validate'
```

## environment

- environment variables を定義します
- 将来的に自動的に `Set-Environment` に変換するか、別の schema を定義する予定です

```sh {schema=env}
export UCHI_terraform=OK
```

## Run Command

```sh {schema=rc}
complete -C terraform terraform
complete -C terraform tf
```
