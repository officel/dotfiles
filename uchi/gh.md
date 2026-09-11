---
uchi: v1
create: 2026-09-11
---

# gh(GitHub CLI)

- [GitHub CLI](https://cli.github.com/)
- GitHub の issue、pull request、workflow などをターミナルから操作する
- `cli/cli` として `aqua/aqua.yaml` で管理

## Run Command

```sh {schema=rc}
if command -v gh >/dev/null 2>&1; then
    eval "$(gh completion -s bash)"
fi
```
