# git

my git config on $XDG_CONFIG_HOME/git/

- `~/.ssh/` に鍵を置くのを忘れないこと

## tl;dr

```bash
# このリポジトリのルートディレクトリ（このファイルのひとつ上のディレクトリ）
dotfiles $ pwd
/home/raki/officel/dotfiles

# git の設定は XDG_BASE_DIRECTORY の XDG_CONFIG_HOME/git に置いてある、ということ
dotfiles $ ls -l ~/.config/git
lrwxrwxrwx 1 raki raki 31  1月  2 02:56 /home/raki/.config/git -> /home/raki/officel/dotfiles/git

# 中身はこのディレクトリ
dotfiles $ ls -l ~/.config/git/
合計 8
-rwxrwxrwx 1 raki raki 2458 12月 31 14:24 README.md
-rwxrwxrwx 1 raki raki  114 12月 31 14:25 allowed_signers
-rwxrwxrwx 1 raki raki 1903 12月 31 14:25 config
-rwxrwxrwx 1 raki raki  669  1月  3 04:33 ignore
```

## see

- [Git - git-config Documentation](https://git-scm.com/docs/git-config)
- [GitAlias/gitalias: Git alias commands for faster easier version control](https://github.com/GitAlias/gitalias)
- [github/gitignore: A collection of useful .gitignore templates](https://github.com/github/gitignore)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/)

# note

## ローカルリポジトリだけ ignore

- チームでは ignore しないが、個人では ignore したい
- 個人の共通設定（このリポジトリの ignore のように）では ignore しないが、特定のリポジトリでは ignore したい
- （リポジトリの）`.git/info/exclude` に追加

## config がどこで設定されているか

- Windows ユーザの同僚氏のグローバルな git の設定の場所がぱっとわからなかった
- `git config --show-origin --show-scope --list` # alias gcs として登録済

## global の config

- [Git - Git Configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
- `~/.gitconfig` か `~/.config/git/config`

> The next place Git looks is the ~/.gitconfig (or ~/.config/git/config) file, which is specific to each user.
> You can make Git read and write to this file by passing the --global option.
