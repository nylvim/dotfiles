# --- Shell Configuration ---

# oh-my-zsh
ZSH=/usr/share/oh-my-zsh/

COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
# ENABLE_CORRECTION="true"

plugins=(sudo git rust)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh



# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' format '%B%F{red}--- %d ---%f%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' original false
zstyle :compinstall filename '/home/novi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load globally installed plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"


# --- Customization ---

# revert useless omz aliases
unalias '...' '....' '.....' '......'
unalias 1 2 3 4 5 6 7 8 9
unalias _ lsa run-help which-command

# load my shell functions and other stuff
source ~/.confast/scripts/nonpath/_shmisc.zsh

# Aliases

# too lazy
alias cd='z'
alias cl='clear'
alias zrl='exec zsh'
alias sudo='sudo '
alias ls='eza'
alias l='eza -l'
alias la='eza -a'
alias ll='eza -la'
alias fdg='fd -g'
alias fdh='fd -H'
alias rgi='rg -i'
alias ch='code .'

# I like these programs
alias cat='rat'
alias ff='ffmpeg -hide_banner'
alias ffpl='ffplay -hide_banner -v warning'
alias ffpr='ffprobe -hide_banner'
alias py='python'

# oxidizing...
alias cg='cargo'
alias cgb='cargo build --release'
alias cgr='cargo run --release'
alias cgt='cargo test --release'
alias cgc='cargo clippy --release'
alias cgf='cargo +nightly fmt'
alias cgd='cargo doc --release'
alias cga='cargo add'
alias cgih='cargo install --path .'
