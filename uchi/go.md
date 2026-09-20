---
uchi: v1
create: 2026-09-11
---

# go

- [Go](https://go.dev/)
- Go 言語のコンパイラ、ツールチェーン、標準 CLI
- `golang/go` として `aqua/aqua_lang.yaml` で管理

## environment

```sh {schema=env}
case ":${PATH}:" in
    *:"$HOME/go/bin":*)
        ;;
    *)
        export PATH="$HOME/go/bin:$PATH"
        ;;
esac
```
