# task

- [Task](https://taskfile.dev/)
- 2025-09-16 v3.45.3 のリリースで `$XDG_CONFIG_HOME/task/taskrc.yml` が使用可能になったのでテスト
- [complete example](https://taskfile.dev/docs/reference/config#example-configuration)
- 今のところ必要とか重要な機能ではないので、このディレクトリごと存在しなくても構わない

# tl;dr

```bash
# このリポジトリのルートディレクトリ（このファイルのひとつ上のディレクトリ）
dotfiles $ pwd
/home/raki/officel/dotfiles

# task の設定は XDG_BASE_DIRECTORY の XDG_CONFIG_HOME/task に置いてある、ということ
dotfiles $ ls -l ~/.config/task
lrwxrwxrwx 1 raki raki 32  1月  2 02:56 /home/raki/.config/task -> /home/raki/officel/dotfiles/task

# 中身はこのディレクトリ
dotfiles $ ls -l ~/.config/task/
合計 4
-rwxrwxrwx 1 raki raki 1327 12月 31 15:14 README.md
-rwxrwxrwx 1 raki raki  161 12月 31 15:15 taskrc.yml
```

# note

- [go-task/task: A task runner / simpler Make alternative written in Go](https://github.com/go-task/task)
- [モダンなタスクランナーを求めて task (taskfile.dev) を使うまでの軌跡](https://zenn.dev/raki/articles/2024-05-30_task_runner)
- [Taskfile.yml のスタイルガイドに沿ったテンプレート](https://zenn.dev/raki/articles/2024-11-19_taskfile_style_guide)
