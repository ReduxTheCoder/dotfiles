# ------------------------
# Starship prompt
# ------------------------
eval "$(starship init zsh)"

# ------------------------
# Oh My Zsh
# ------------------------
export PATH=$HOME/.cargo/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:$HOME/.local/bin
export ZSH=$HOME/.oh-my-zsh

plugins=(
    git
    fzf-tab
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ------------------------
# Tab Completion
# ------------------------
autoload -Uz compinit
compinit

[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# ------------------------
# History Options
# ------------------------
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
HISTSIZE=10000
SAVEHIST=10000
setopt CORRECT

# ------------------------
# zoxide
# ------------------------
eval "$(zoxide init --cmd cd zsh)"

. ~/stuff/bin/boot.sh

# -----------------------
# Other
# -----------------------
EDITOR=nvim
export EDITOR=nvim
