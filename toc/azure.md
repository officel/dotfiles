---
uchi: v1
create: 2026-09-08
---

# azure

- [Azure CLI](https://github.com/Azure/azure-cli)
- `~/.azure` は環境差が大きいため dotfiles では管理しない

## note

- Azure CLI の alias は `task azure:az:alias:export` と `task azure:az:alias:import` で同期する
- サブスクリプションやリソースグループなどの環境依存情報は設定ファイルに固定しない

## alias

- Azure CLI の操作を短くする alias

```sh {schema=alias}
alias azal='az account list --query "[].name" -o tsv | fzf --no-multi | xargs az account set --subscription'
alias azas='az account show'
alias azaks='az aks list --query "[].[name,resourceGroup]" -o tsv | fzf | xargs -n2 sh -c '\''az aks get-credentials --name $1 --resource-group $2 --overwrite-existing'\'' sh'
alias azaksl='kubelogin convert-kubeconfig -l azurecli  # use az cli'
alias azex='az extension list -o table'
alias aliasaz='alias | grep "az "'
```

## CLI alias

- Azure CLI alias の定義。`uchi` の出力対象にはしない

```ini
[su]
command = account list -o table

[roledef]
command = role definition list -o json --name
```

## function

- 指定した Azure RBAC アクションを許可するロールを一覧表示する

```sh {schema=function}
# List Azure RBAC roles that have permissions for a specific action
# Usage: azrbac <action>
# Example: azrbac "Microsoft.Storage/storageAccounts/read"
function azrbac() {
	local action="$1"

	az role definition list -o json \
	| jq -r --arg action "$action" '
			.[]
			| select(
					any(.permissions[]?;
							(any(.actions[]?; . == $action)
							 or
							 any(.dataActions[]?; . == $action))
					)
				)
			| .roleName
		'
}
```
