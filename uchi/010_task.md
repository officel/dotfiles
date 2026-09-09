---
uchi: v1
create: 2026-09-06
---

# 010_task

- [task](https://github.com/go-task/task)
- make 代替
- task って名前だけど、org は go-task だし、サイトは [taskfile.dev](https://taskfile.dev/) で命名って難しいよねって

## note

- [taskfiledevの記事一覧 | Zenn](https://zenn.dev/topics/taskfiledev) task はぐぐらびりてぃが低いので、zenn では勝手に taskfiledev をトピックにして占拠しているｗ
- [task](../task/) ディレクトリも参照

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
