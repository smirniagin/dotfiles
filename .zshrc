# 1. Включаем автодополнение
autoload -U compinit
compinit

# 2. Настраиваем prompt
eval "$(starship init zsh)"

# 3. Подключаем fzf
source <(fzf --zsh)

# 4. Алиасы
alias cat=bat

