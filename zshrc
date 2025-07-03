# Path to Oh My Zsh (make sure you have it cloned)
export ZSH="$HOME/.oh-my-zsh"

# Theme (Powerlevel10k)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins (only Oh My Zsh official ones here)
plugins=(
  git
  fzf
  docker
  colored-man-pages
  history-substring-search
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load Powerlevel10k configuration if exists
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
