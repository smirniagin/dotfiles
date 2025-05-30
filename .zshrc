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
