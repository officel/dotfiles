---
uchi: v1
create: 2026-10-25
---

# hadolint

- [hadolint](https://github.com/hadolint/hadolint)

> Dockerfile linter, validate inline bash, written in Haskell

## note

- あまり気にしないで prek に hadolint-docker して使っていた
- [Potential supply-chain exposure from `hadolint-docker` pre-commit hook · Issue #1176 · hadolint/hadolint](https://github.com/hadolint/hadolint/issues/1176)
- リリース処理とタグ付け、自動化、設定の更新が絡むの悩ましいところ
- 多少ズレたからなんだよってのはあるけど。あとそれが気になるなら action だけ外部リポジトリ作ってやればええんやで、的な
- まぁとにかく、気がついちゃったら docker で使い続けるのもアレなので、インストールに変更したってワケ
