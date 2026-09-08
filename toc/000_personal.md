---
uchi: v1
create: 2026-09-07
---

# 000_personal

- 個人設定を**最初**に置くように調整するためのファイル（zzzと対）
- 各スキーマ部分をなるべく先に書く（上書きされたり優先順位を下げられたりしてもいいもの）

## alias

- `ls` の alias は eza 等で置換されてよし

```sh {schema=alias}
alias l='ls -al'
alias ls='ls --group-directories-first'
alias ll='ls -l'
```

## environment

```sh {schema=env}
export UCHI_000_personal=OK
```

## Run Command

- bash 用の completion とか書いたらそりゃ bash 用だよな
- @TODO 他のシェルと分岐させる仕組みと、他のシェル形式での出力処理

```sh {schema=rc}
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# 2024-06-05 https://github.com/cykerway/complete-alias
# brew install bash-completion@2
# wget  https://raw.githubusercontent.com/cykerway/complete-alias/master/complete_alias
# chmod +x complete_alias
# sudo mv complete_alias /usr/local/bin/
[[ -r "/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh" ]] && . "/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh"
. /usr/local/bin/complete_alias
```
