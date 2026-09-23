---
create: 2026-09-13
---

# minijinja-cli

- [minijinja/minijinja-cli](https://github.com/mitsuhiko/minijinja/blob/main/minijinja-cli/README.md)
- [mitsuhiko/minijinja](https://github.com/mitsuhiko/minijinja)
- [Jinja](https://jinja.palletsprojects.com/en/stable/)
- Ansible 等で採用されているテンプレートエンジンが jinja
- そのテンプレートレンダリングの Rust 実装のひとつが minijinja で、その CLI

## note

- [最近の失敗とリカバリー](https://zenn.dev/raki/articles/2026-09-13_raki)
- 普段の使い方はシェル内でレポート作成等なので、特別何か設定等はしていない
- ~~以前は curl からインストールシェル実行だったが aqua でインストール可能になっていたので切り替えた~~
- ~~よく見たら変わってなかった。aqua でインストールされるのは minijinja で CLI はついてこない~~
- ~~本体であるクレートは個人的に必要ないので、やはり curl からのインストールシェル実行で入れ直した~~
- ~~aqua からも抜いたので、`~/.local/bin` にインストールされている（2026-09-13 現在 v2.24.0）~~
- なんかおかしいよねと思ってやり直したら aqua でインストールしたやつもうまくいったので今は aqua で管理
- ↑ history を見直してみたところ、`aqua install` してなかったっぽい（したつもりだったんだけども

```sh
# マニュアルインストールするならこういう感じだったけど aqua に変更した
$ curl -sSfL https://github.com/mitsuhiko/minijinja/releases/latest/download/minijinja-cli-installer.sh | sh
downloading minijinja-cli 2.24.0 x86_64-unknown-linux-gnu
installing to /home/raki/.local/bin
  minijinja-cli
everything's installed!
```
