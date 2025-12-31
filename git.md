# config_git

my git config on $XDG_CONFIG_HOME/git/

## usage

```bash
cd ~/.config  # $XDG_CONFIG_HOME or $HOME/.config
git clone https://github.com/officel/config_git.git ./git

# or I do it this way
cd ~/repos/github.com/officel/
git clone https://github.com/officel/config_git.git
ln -s ~/repos/github.com/officel/config_git/ ~/.config/git
```

- install id_rsa (manual)
- fix git config remote.origin.url after clone

## see

- [Git - git-config Documentation](https://git-scm.com/docs/git-config)
- [GitAlias/gitalias: Git alias commands for faster easier version control](https://github.com/GitAlias/gitalias)
- [github/gitignore: A collection of useful .gitignore templates](https://github.com/github/gitignore)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/latest/)

# related my projects

- [officel/config_aqua: .config/aqua](https://github.com/officel/config_aqua)
- [officel/config_bash: .config/bash](https://github.com/officel/config_bash)
- [officel/config_git: .config/git](https://github.com/officel/config_git)
- [officel/config_task: .config/task](https://github.com/officel/config_task)

# note

## ローカルリポジトリだけ ignore

- チームでは ignore しないが、個人では ignore したい
- 個人の共通設定（このリポジトリの ignore のように）では ignore しないが、特定のリポジトリでは ignore したい
- （リポジトリの）`.git/info/exclude` に追加

## config がどこで設定されているか

- Windows ユーザの同僚氏のグローバルな git の設定の場所がぱっとわからなかった
- `git config --show-origin --show-scope --list`

## global の config

- [Git - Git Configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
- `~/.gitconfig` か `~/.config/git/config`

> The next place Git looks is the ~/.gitconfig (or ~/.config/git/config) file, which is specific to each user.
> You can make Git read and write to this file by passing the --global option.

## commit 時に自動改行させない

- git のコミット本文は 72 文字でデフォルトで自動改行される
- `textwidth=0` にすればいいらしいので、`/.vimrc` で設定
- あまり長いのは推奨されないので適度に自分で改行すること

```text
# ~/.vimrc
autocmd FileType gitcommit setlocal textwidth=0
```
