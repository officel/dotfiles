---
uchi: v1
create: 2026-09-09
---

# k8s

- [Kubernetes](https://kubernetes.io/)
- [kubectl](https://github.com/kubernetes/kubectl)
- [kubecolor](https://github.com/kubecolor/kubecolor)
- [stern](https://github.com/stern/stern)
- [krew](https://krew.sigs.k8s.io/)
- [k9s](https://github.com/derailed/k9s)
- Kubernetes 関係のツールは `aqua/aqua_k8s.yaml` と krew で管理する

## note

- kubectl は kubecolor を通して実行し、出力を見やすくする
- stern は krew でインストールする kubectl プラグインとして使用する
- k9s は Kubernetes リソースを対話的に確認・操作するために使用する

## alias

- kubectl と k9s の操作を短くする alias

```sh {schema=alias}
alias aliask='alias | grep kubectl'
alias k='kubecolor'
alias kubectl='kubecolor'
alias ka='kubectl apply'
alias kd='kubectl describe'
alias krm='kubectl delete'
alias kg='kubectl get'
alias kga='kubectl get all'
alias kgn='kubectl get node -o wide'
alias kgp='kubectl get pod'
alias kgx='kubectl get all,pv,pvc,job,ing'
alias kgpa='kubectl get pod -A'
alias kgtn='kubectl get node -o wide; kubectl top node'
alias kdrainf='kubectl drain --ignore-daemonsets --delete-local-data'
alias stern='kubectl stern'

alias k9s='LC_CTYPE="en_US.UTF-8" k9s'
alias k9sr='LC_CTYPE="en_US.UTF-8" k9s --readonly'
```

## Run Command

- kubectl、kubecolor、stern の Bash completion を有効にする

```sh {schema=rc}
source <(kubectl completion bash)
complete -o default -F __start_kubectl kubecolor k

source <(kubectl stern --completion bash)
complete -o default -F __start_stern kubectl stern
```

## environment

- krew plugin の PATH

```sh {schema=env}
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
```
