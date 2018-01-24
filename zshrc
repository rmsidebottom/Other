# Path to your oh-my-zsh installation.
export ZSH=/Users/daboss/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux sudo python sublime zsh-syntax-highlighting)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#### ALIASES
alias l='ls -lhptTA'
alias s='sudo'
alias p='pwd'
alias gp='git push'
alias gs='git status'
alias ga='git add . && git status'
alias gc='git commit'
alias gl='git pull'
alias clone='git clone'
alias install='brew install'
alias update='brew update'
alias info='brew info'
alias exiftool='/usr/local/bin/exiftool'
alias gb='go build'
#alias update='sudo apt-get update -y && sudo apt-get upgrade -y'
#alias upgrade='sudo apt-get update -y && sudo apt-get upgrade -y'

eval "$(thefuck --alias)"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
