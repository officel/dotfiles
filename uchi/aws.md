---
uchi: v1
create: 2026-09-08
---

# aws

- [aws-cli](https://github.com/aws/aws-cli)
- [aws-vault](https://github.com/99designs/aws-vault)
- AWS 関係のツールは `aqua` の `aqua/aqua_aws.yaml` でインストールする
- AWS の認証情報やプロファイルは環境依存なので `~/.aws` では管理しない

## note

- `aws-vault` は AWS CLI や Terraform を実行する前に認証情報を渡すために使う
- 認証情報のキャッシュ削除や SSO ログインは、必要なときだけ明示的に実行する
- `aws` の補完は Bash の対話シェルで有効にする

## alias

- Alias の管理が楽になったのでコメントしていた alias を元に戻す
- ついうっかり別のコマンドやツールで上書きしてしまわないように
- fzf を覚えたので解消したいとこはある

```sh {schema=alias}
alias aec2='aws ec2 describe-instances | jq -r '"'"'.Reservations|sort_by(.Instances[].Tags[]|select(.Key == "Name").Value)| .[].Instances[]|[(.Tags[]|select(.Key == "Name").Value), .InstanceId, .PrivateIpAddress, .State.Name] | @tsv'"'"''
alias aec2start='aws ec2 start-instances --instance-ids'
alias aec2stop='aws ec2 stop-instances --instance-ids'
alias aw='aws sts get-caller-identity || (aws sso login --profile default && aws sts get-caller-identity)'
alias awclear='rm -f ~/.aws/*/cache/*'
alias awc='rm -f ~/.aws/*/cache/*; aws sso login --profile default && aws sts get-caller-identity'

alias av='aws-vault'
alias avc='aws-vault clear'
alias ave='aws-vault exec'
alias avls='aws-vault list'

alias avta='aws-vault exec ${AWS_PROFILE:-default} -- terraform apply'
alias avte='aws-vault exec ${AWS_PROFILE:-default} -- terraform init --upgrade && aws-vault exec ${AWS_PROFILE:-default} -- terraform fmt && aws-vault exec ${AWS_PROFILE:-default} -- terraform plan'
alias avto='aws-vault exec ${AWS_PROFILE:-default} -- terraform output'
alias avtp='aws-vault exec ${AWS_PROFILE:-default} -- terraform plan'
alias avts='aws-vault exec ${AWS_PROFILE:-default} -- terraform state'
```

## Run Command

- AWS CLI の Bash 補完を有効にする

```sh {schema=rc}
complete -C aws_completer aws
```
