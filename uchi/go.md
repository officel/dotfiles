---
uchi: v1
create: 2026-09-11
---

# go

- [Go](https://go.dev/)
- Go 言語のコンパイラ、ツールチェーン、標準 CLI
- `golang/go` として `aqua/aqua_lang.yaml` で管理

## environment

- 条件分岐や処理を挟んだ PATH 設定は rc に書くことにしたので注意（↓のコードフェンスは rc ）

```sh {schema=rc}
case ":${PATH}:" in
  *:"$HOME/go/bin":*)
    ;;
  *)
    export PATH="$HOME/go/bin:$PATH"
    ;;
esac
```
