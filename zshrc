# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git node brew gem github macos ruby rbenv z tmux docker docker-compose kubectl mix emoji)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias mac="~/.m-cli/m"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/.npm/bin:/usr/local/Cellar/boost/1.59.0"
export PATH="$HOME/.cargo/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export NVM_DIR="/Users/danielxu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH="/Users/danielxu/.nvm/versions/node/v0.12.7/lib/node_modules"
alias nombom='npm cache clear && bower cache clean && rm -rf node_modules bower_components && npm install && bower install'
alias hide=' defaults write com.apple.finder CreateDesktop false && killall Finder'
alias show=' defaults write com.apple.finder CreateDesktop true && killall Finder'
alias em="emacsclient -nw"
alias emm="emacs -nw"
alias sem="emacs --daemon"
alias tm="tmux"
alias kem="emacsclient -e '(kill-emacs)'"
alias gpr='f() { git fetch upstream && git checkout pr/"$1"; }; f'
export PATH="$PATH:/path/to/elixir/bin"
export PATH="/Users/danielxu/.cask/bin:$PATH"
export PATH="$PATH:~/.mix/escripts"
export ERL_AFLAGS="-kernel shell_history enabled"
alias tl="tmux list-session"
alias ta="tmux attach -t"
alias ts="tmux new -s"

alias zl="zellij list-sessions"
alias za="zellij attach"
alias zs="zellij -s"


# Influx db
alias infdb='influx -precision rfc3339'

# java version
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
export GTAGSLABEL=pygments

export GOROOT=$(go env GOROOT)
export GOPATH=$(go env GOPATH)
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/bin:/usr/local/sbin:$PATH

function prev() {
  PREV=$(fc -lrn | head -n 1)
  sh -c "pet new `printf %q "$PREV"`"
}

function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^v' pet-select


export PATH="/usr/local/opt/openjdk@8/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v1.8)

export FLYCTL_INSTALL="/Users/shuhan/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/tbb@2020/lib"
export CPPFLAGS="-I/usr/local/opt/tbb@2020/include"

#export RUSTUP_DIST_SERVER="https://rsproxy.cn"
#export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

#export https_proxy=http://127.0.0.1:1087 http_proxy=http://127.0.0.1:1087 all_proxy=socks5://127.0.0.1:1086
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/usr/local/opt/llvm@12/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"


function zr () { zellij run --name "$*" -- zsh -ic "$*";}
function zrf () { zellij run --name "$*" --floating -- zsh -ic "$*";}
function ze () { zellij edit "$*";}
function zef () { zellij edit --floating "$*";}

eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
