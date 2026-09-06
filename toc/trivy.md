---
uchi: false
create: 2026-09-06
---

# trivy

- [trivy](https://github.com/aquasecurity/trivy)
- terraform（に限らない）セキュリティスキャナー
- インストールは `aqua` に任せている
- terraform を扱うリポジトリではほぼ必須
- [これから始める trivy](https://zenn.dev/terraform_jp/articles/2025-11-11_terraform_trivy)

## note

- terraform だけじゃなく git や k8s のマニフェストなどもチェックできる
- pre-commit や CI で自動化するため、ローカルで手動実行することはあまりない
- そのため dotfiles で管理する設定はない
