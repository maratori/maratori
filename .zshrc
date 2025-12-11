# Load/Install zap (plugin manager for zsh)
ZAP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zap"
if [[ ! -d "$ZAP_HOME" ]]; then
  mkdir -p "$(dirname $ZAP_HOME)"
  git clone -b "release-v1" https://github.com/zap-zsh/zap.git "$ZAP_HOME"
fi
source "$ZAP_HOME/zap.zsh"
unset ZAP_HOME
unset ZAP_DIR

# Add zsh plugins
plug zsh-users/zsh-syntax-highlighting
plug zsh-users/zsh-completions
plug zsh-users/zsh-autosuggestions
plug zsh-users/zsh-history-substring-search
plug MichaelAquilina/zsh-auto-notify
plug MichaelAquilina/zsh-you-should-use
plug Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit
if [[ "$(date +'%j')" != "$(stat -f '%Sm' -t '%j' ~/.zcompdump)" ]]; then
  compinit    # run with security checks once a day
else
  compinit -C # skip security checks to improve performance
fi

# Use prefix while history search with up/down keys
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=100000             # in-memory max lines
SAVEHIST=$HISTSIZE          # file max lines
setopt APPEND_HISTORY       # zsh sessions will append their history list to the history file, rather than replace it
setopt HIST_FIND_NO_DUPS    # do not display duplicates of a line previously found
setopt HIST_IGNORE_ALL_DUPS # delete old recorded entry if new entry is a duplicate
setopt HIST_IGNORE_SPACE    # do not record an entry starting with a space
setopt HIST_REDUCE_BLANKS   # remove superfluous blanks before recording entry
setopt HIST_SAVE_NO_DUPS    # do not write duplicate entries in the history file
setopt HIST_VERIFY          # show command with history expansion (like !! or !$) to user before running it
setopt SHARE_HISTORY        # share history between all sessions
                            # INC_APPEND_HISTORY and INC_APPEND_HISTORY_TIME must be disabled
                            # also implicitly enables EXTENDED_HISTORY which uses ":start:elapsed;command" format

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':fzf-tab:complete:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' fzf-preview 'echo "${(P)word}"'
zstyle ':fzf-tab:complete:brew-(install|uninstall|search|info):*-argument-rest' fzf-preview 'HOMEBREW_COLOR=1 brew info "$word"'
zstyle ':fzf-tab:complete:*' fzf-preview 'x="${realpath#-*=}"; [ -f "$x" ] && bat "$x" -p --color always || [ -d "$x" ] && ls -A --color "$x"'

# Install brew if necessary
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install and enable fzf
if ! command -v fzf &>/dev/null; then
  brew install fzf
fi
source <(fzf --zsh)

# Enable Oh-My-Posh prompt
if ! command -v oh-my-posh &>/dev/null; then
  brew install oh-my-posh
fi
OMP_THEME="${XDG_CONFIG_HOME:-$HOME/.config}/omp.yml"
if [[ ! -f "$OMP_THEME" ]] then
  curl -fsSL -o "$OMP_THEME" "https://raw.githubusercontent.com/maratori/maratori/refs/heads/main/omp.yml"
fi
eval "$(oh-my-posh init zsh --config $OMP_THEME)"

# Configure zsh-auto-notify
AUTO_NOTIFY_THRESHOLD=30
AUTO_NOTIFY_IGNORE+=(terraform vi)

# Aliases
alias cat="bat --paging=never --plain"
alias bb="bazel build"
alias bt="bazel test"
alias br="bazel run"
alias gzl="bazel run //:gazelle"
alias k="kubectl"
