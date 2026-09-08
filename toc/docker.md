---
uchi: v1
create: 2026-09-08
---

# docker

- [docker](https://github.com/docker/cli)
- [docker compose](https://github.com/docker/compose)
- Docker 関係の alias はこのファイルで管理する

## note

- `d` は Docker、`dc` は Docker Compose の短縮 alias
- コンテナーの一覧表示では、用途に応じて標準出力の並び替えを使い分ける

## alias

- Docker CLI と Docker Compose の操作を短くする alias

```sh {schema=alias}
alias     d='docker'
alias   dce='docker container exec -it'
alias dclog='docker container logs'
alias dcrun='docker container run -itd --rm'

alias  dps='docker ps'
alias dpss="docker ps | awk 'NR <= 1; NR > 1 { print \$0 | \"sort -k7 -V\" };'"
alias   ds='docker stop'

# よく使うイメージを起動する alias
# alias al2='docker container run -itd --rm -e "TZ=Asia/Tokyo" --name al2 amazonlinux'
alias alpinx='docker container run -itd --rm -v `pwd`:/usr/share/nginx/html -p 8081:80 -e "TZ=Asia/Tokyo" --name alpinx nginx:alpine'
# alias alpython='docker container run --rm -it -d -e "TZ=Asia/Tokyo" --name alpython python:alpine'
# alias jekyll='docker container run -itd --rm -v `pwd`:/srv/jekyll:Z -e "TZ=Asia/Tokyo" --name jekyll jekyll/jekyll jekyll'

alias dc='docker compose'
alias dcd='docker compose down'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dcr='docker compose run'

# Docker の alias 一覧
alias aliasd='alias | grep docker'
```
