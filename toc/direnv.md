---
uchi: v1
create: 2026-09-06
---

# direnv

- [direnv](https://github.com/direnv/direnv)
- ディレクトリ毎の環境変数等の管理をするシェルエクステンション
- 半年更新されてない？

## note

- `.envrc` ファイルで管理
- `.env` などの読み込み可（.envrc 内で `dotenv` と書くだけ）
- `gh auth switch -u USER_NAME` でディレクトリ毎にユーザー切り替えが便利（個人と職場のアカウントなど）
- `export GITHUB_TOKEN=$(gh auth token)` としておけばディレクトリ移動時に切り替えが自動化されて便利

## alias

- 基本的に自動だけど、新規作成や設定変更時には有効化を求められるのでこれを書いておくと便利

```sh {schema=alias}
alias da='direnv allow'
```

## Run Command

```sh {schema=rc}
eval "$(direnv hook bash)"
```
