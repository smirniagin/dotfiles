# 1. Включаем автодополнение
autoload -U compinit
compinit

# 2. Настраиваем prompt
eval "$(starship init zsh)"

# 3. Подключаем fzf
source <(fzf --zsh)

# 4. Алиасы
alias cat=bat

# Eza
#alias l="eza -l --icons --git -a"
#alias lt="eza --tree --level=2 --long --icons --git"
#alias ltree="eza --tree --level=2  --icons --git"

alias ls="eza --tree --level=1 --icons=always --git"
alias ll="eza --tree --level=1 --icons=always --git -a -l"

# KUBECONFIG
export KUBECONFIG="$HOME/.kube/config"

# K8s Aliases
alias k='kubectl'
alias kaf='kubectl apply -f'
alias kdel='kubectl delete -f'

# Get
alias kg='kubectl get'
alias kgp='kubectl get pods'
alias kgd='kubectl get deployments'
alias kgs='kubectl get svc'
alias kgn='kubectl get nodes'
alias kgns='kubectl get namespaces'

# Describe & Logs
alias kd='kubectl describe'
alias kl='kubectl logs'
alias klf='kubectl logs -f'

# Exec
alias ke='kubectl exec -it'

# Context and Namespace
alias kc='kubectx'       
alias kns='kubens'       
alias kcns='kubectl config set-context --current --namespace'

# Fuzzy + Logs 
alias klog='kubectl logs -f $(kubectl get pods --no-headers | fzf | awk "{print \$1}")'
alias ke-pod='kubectl exec -it $(kubectl get pods --no-headers | fzf | awk "{print \$1}") -- /bin/sh'

