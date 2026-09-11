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
- [Argo CD](https://github.com/argoproj/argo-cd)
- [kubelogin](https://github.com/Azure/kubelogin)
- [Helm](https://github.com/helm/helm)
- [istioctl](https://istio.io/latest/docs/ops/diagnostic-tools/istioctl/)
- [kind](https://github.com/kubernetes-sigs/kind)
- [kubeadm](https://github.com/kubernetes/kubeadm)
- [Chainsaw](https://github.com/kyverno/chainsaw)
- Kubernetes 関係のツールは `aqua/aqua_k8s.yaml` と krew で管理する

## note

- kubectl は kubecolor を通して実行し、出力を見やすくする
- stern は krew でインストールする kubectl プラグインとして使用する
- k9s は Kubernetes リソースを対話的に確認・操作するために使用する
- Argo CD は Kubernetes への GitOps デプロイを管理する
- kubelogin は Azure Kubernetes Service の認証に使用する
- Helm は Kubernetes のパッケージ管理に使用する
- kind は Docker コンテナー上の Kubernetes クラスターを作成する
- kubeadm は Kubernetes クラスターの初期化に使用する
- Chainsaw は Kubernetes の統合テストに使用する

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

if command -v helm &> /dev/null; then
	source <(helm completion bash)
fi
```

## environment

- krew plugin の PATH

```sh {schema=env}
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
```
