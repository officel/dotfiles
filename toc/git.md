---
uchi: v1
create: 2026-09-06
---

# git

- [git](https://git-scm.com/)
- だいたい brew でインストールしている

## alias

- `aliasg`(`alias + g`) と `git alias` の違い
- `cr` はリポジトリトップへ移動

```sh {schema=alias}
alias aliasg='alias | grep git'
alias cr='cd "$(git rev-parse --show-toplevel)"'
alias g='git'
alias ga='git add'
alias gai='git add -i'
alias gap='git add -p'
alias gau='git add -u'
alias gb='git branch'
alias gba='git branch -a'
alias gca='git commit --amend'
alias gcv='git commit -v'
alias gcm='git commit -m'
alias gcl='git config list'
alias gcs='git config list --show-origin --show-scope'
alias gdc='git diff --cached'
alias gdi='git diff'
alias gdn='git diff --name-only'
alias gds='git diff --stat'
alias gdw='git diff --no-index  --word-diff-regex="."'  # 文字単位で差分表示
alias gdww='git diff --no-index --word-diff --word-diff-regex='\''[A-Za-z0-9]+|[^[:space:]]'\'''  # 単語単位で差分表示
# zoxide と一緒に fzf を入れたので、ログからハッシュを取得しやすいようにした(git find commit 的な)
alias gfc='git log --all --oneline --graph --decorate -50 | fzf --no-multi | grep -oE '\''[a-f0-9]{7}'\'' | head -c -1'
# リストからブランチを選択してチェックアウト
alias gfo='git branch --all --sort=-refname | grep -v -e HEAD | fzf --no-multi | xargs git checkout '
alias gg='git grep -i -P'
alias glogs='git log -S'

# 直近1年で変更の多いファイルトップ20
alias gl1='git log --format="" --name-only --since="1 year ago"          | sort | uniq -c | sort -nr | head -20'
# 直近1年でバグ修正の多いファイルトップ20
alias gl2='git log --format="" --name-only -i -E --grep="fix|bug|broken" | sort | uniq -c | sort -nr | head -20'
# 直近1年のコミット数を月ごとに集計
alias gl3='git log --format="%ad" --date=format:"%Y-%m"                  | sort | uniq -c | tail -13'
# 直近1年のリバートや緊急修正のコミットを表示
alias gl4='git log --format="%ad %h %s" --date=short --since="1 year ago" | grep -iE "revert|hotfix|emergency|rollback"'
# コントリビュータートップ20
alias gl5='git shortlog -sn --no-merges | head -20'

alias gp='git plog -10'
alias gpa='git plog --all -10'
# 引数が必要な場合は function にする必要があって面倒なので
alias gpr='git pr'
alias gr='git fetch --prune --all && git checkout origin/HEAD && git plog --all -10 && git status'
alias gss='git show --stat'
alias gst='git status --short --branch'
```

## profile

```sh {schema=profile}
# ssh-agent for git commit ssh signature verification
if [ -z "${SSH_AGENT_PID}" ]; then
    eval $(ssh-agent) 1>/dev/null
    ssh-add ~/.ssh/id_ed25519 1>/dev/null 2>&1
fi
```
