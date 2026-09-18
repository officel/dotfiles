---
uchi: v1
create: 2026-09-06
---

# 010_task

- [task](https://github.com/go-task/task)
- make 代替
- インストールは `aqua`
- task って名前だけど、org は go-task だし、サイトは [taskfile.dev](https://taskfile.dev/) で命名って難しいよねって

## note

- [taskfiledevの記事一覧 | Zenn](https://zenn.dev/topics/taskfiledev) task はぐぐらびりてぃが低いので、zenn では勝手に taskfiledev をトピックにして占拠しているｗ

## alias

- `alias t` については [task を fzf で選択して実行する alias の成長過程](https://zenn.dev/raki/articles/2026-08-14_alias_task_fzf) を参照
- それによりタスク指定で一発実行できなくなったので `alias ta` を設定している
- `alias tg` はユーザーグローバルなファイル（`$HOME/TaskFile.yml`）の呼び出し

```sh {schema=alias}
alias aliast='alias | grep "task"'
alias t='task --list --json | jq -r .tasks[].name | fzf --preview "task --summary {}" | xargs task'
alias ta='task'
alias tg='task --global'
alias tl='task --list'
```

## taskrc.yml

- 2025-09-16 v3.45.3 のリリースで `$XDG_CONFIG_HOME/task/taskrc.yml` が使用可能になった
- [complete example](https://taskfile.dev/docs/reference/config#example-configuration)
- 2026-08-19 v3.53.1 のリリースで、リモートタスクファイルが GA になってフラグが不要になった
- 結果として今のところ taskrc.yml で設定したいオプションはないので設定と取り除くことにした
- チーム間共有などを鑑みると設定を置き換えるのは望ましくない

```yaml:taskrc.yml
# https://taskfile.dev/docs/reference/config

# Global settings
verbose: false
concurrency: 2

# Enable experimental features
# experiments:
#  REMOTE_TASKFILES: 1
```
