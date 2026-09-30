export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git autojump direnv)

source "$ZSH/oh-my-zsh.sh"
eval "$(mise activate zsh)"

alias gcm="git commit -m "
alias gprune="git branch --merged | grep -Ev '(^\*|main)' | xargs git branch -d"
alias zshconfig="zed ~/.zshrc"

[[ ! -f "$HOME/.zshrc.local" ]] || source "$HOME/.zshrc.local"

source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
