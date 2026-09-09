---
uchi: v1
create: 2026-09-06
---

# terraform-docs

- [terraform-docs](https://github.com/terraform-docs/terraform-docs)
- terraform のコードからドキュメントを生成するツール
- インストールは `aqua` に任せている
- terraform を扱うリポジトリではほぼ必須
- [これから始める terraform-docs](https://zenn.dev/terraform_jp/articles/2025-10-23_terraform-docs)

## note

- マークダウン出力されたドキュメント自体はコンテンツ、つまり HCL のコード、構造に強く影響を受けるため、マークダウンのリンターと相性が良くないケースがある
- Prettier とも相性が悪くなることが多い

## alias

- ローカルで実行するにあたって、`tflint` のように呼びやすくする
- 一般的には CI に組み込むため、あまり使わないかも

```sh {schema=alias}
alias tfdocs='terraform-docs'
```
