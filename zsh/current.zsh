# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/epearson/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export DEFAULT_USER=`whoami`


# Was probably related to PHP devbox setup; don't need it anymore
# eval `ssh-agent -s`
# ssh-add ~/.ssh/id_rsa
# [ -z $SSH_AUTH_SOCK ] && `eval ssh-agent` && ssh-add
export SSH_KEY_PATH="~/.ssh/id_rsa"

#########################
# Env var necessary to make "make" command in dataduct repo work
#########################
export PHPDEVBOXNUMBER="-7vn1vlt"

#########################
# DIRECTORY COMMANDS
#########################

alias cdp='cd ~/codebase/php'

alias cdr='cd ~/codebase/resources'

alias cdc='cd ~/codebase'

alias cdd='cd ~/codebase/db'

alias cde='cd ~/codebase/email-templates'

alias cdt='cd ~/codebase/templates'

alias cdw='cd ~/codebase/python-platforms-wheelhaus-service'

alias cdk='cd ~/codebase/k8s-helm'

alias cdpe='cd ~/codebase/wdn-pilot-eligibility-service'

#########################
# WF COMMANDS
#########################

#alias xdb='sh /Users/epearson/xdebug.sh'
alias xdb='wf enable xdebug-tunnel'

alias ws='wf sniff'

alias test='wf test unit -d -t'

alias wff='wf format'

#########################
# GIT COMMANDS
#########################

alias gs='git status '

alias ga='git add '

alias gb='git branch '

alias gd='git diff '

alias go='git checkout '

alias gk='gitk --all'

alias gx='gitx --all'

alias gcm='git commit -m '

alias gcam='git commit -am '

alias grm='git rebase main'

alias gri='git rebase -i'

alias gbupstream='git branch --set-upstream-to='

alias gprom='git pull --rebase origin main'

alias gdnm='git diff --name-only main...'

alias gl='git log --name-status'

alias lb="git for-each-ref --sort=-authordate --count=8 refs/heads/ --format='%(refname:short)'"

alias gfom='git fetch origin main'

alias gmom='git merge origin/main'

alias gfm='git fetch origin main && git merge origin/main'

alias gla='git log --author=epearson'

alias gm='git merge '

alias gpom='git push origin main'

alias gp='git push '

alias gu='git pull'

#########################
# DOCKER/K8S COMMANDS
#########################

alias dcrct='docker-compose run command test'

alias dcru='docker-compose run unit'

alias dcrcp='docker-compose run command produce'

alias dcrcc='docker-compose run command consume'

alias dcrs='docker-compose run sniffs'

alias dcrd='docker-compose run devbox'

alias dcrt='docker-compose run --rm test'

alias dcri='docker-compose run --rm test-integration'

alias dcus='docker-compose up service'

alias dcb='docker-compose build'

alias dcd='docker-compose down'

alias dcp='docker-compose ps'

alias dcr='docker-compose run'

alias dc='docker-compose '

alias dcrk='docker-compose rm -svf kafka'

alias destroy='docker-compose rm -svf'

alias kga='kubectl get all'

alias kgp='kubectl get pods'

alias kgpwdn='kubectl -n wdn-carrier-interface get pods'

alias kgpus='kubectl -n wdn-unit-system get pods'

alias kgph='kubectl -n wdnci-http get pods'

alias kgppe='kubectl -n wdn-pilot-eligibility-service get pods'

alias kdp='kubectl describe pod '

alias kd='kubectl describe '

alias ka='kubectl auth can-i get pods'

alias kge='kubectl get events'

alias kprodb='kubectl config use-context bo1-kubernetesc2'

alias kprodi='kubectl config use-context gke-prod-c2-iad1'

alias kdsde='kubectl config use-context gke-sdedev-c1-dsm1'

alias kpsde='kubectl config use-context gke-sdeprod-c1-dsm1'

alias kdev2='kubectl config use-context dev-kubernetesc2'

alias kdevi='kubectl config use-context gke-dev-c2-iad1'

alias kcgc='kubectl config get-contexts'

alias k='kubectl '

alias kl='kubectl logs'

#########################
# KAFKA COMMANDS
#########################

alias sshc13='ssh kafkac13n1.dev.bo1.csnzoo.com'

#########################
# OTHER COMMANDS
#########################

alias devbox='ssh webphp-7vn1vlt.dev.bo1.csnzoo.com'

alias mamba='docker pull wayfair/mamba:latest && docker run -it wayfair/mamba:latest'

alias rz='source ~/.zshrc'

# run backstage-wayfair locally

runBackstage() {
	export AUTH_OKTA_CLIENT_ID=0oagwrz6t6lSlqGES1t7
	export AUTH_OKTA_CLIENT_SECRET=https://passwordstate.corp.wayfair.com/pid=29399
	export AUTH_OKTA_AUDIENCE=https://wayfair.okta.com
	export GHE_PRIVATE_TOKEN=1fbb51e49f56745f577686fe4dc208ddacf49e5e
	export GHE_AUTHORIZATION_HEADER="token ${GHE_PRIVATE_TOKEN}"
	export WAYPI_CLIENT_SECRET=https://passwordstate.corp.wayfair.com/pid=35697
	export BK_TOKEN=//https://passwordstate.corp.wayfair.com/pid=35874
	export BK_AUTH_HEADER="Bearer ${BK_TOKEN}"
	export NODE_TLS_REJECT_UNAUTHORIZED=0
	export AUTH_GITHUB_CLIENT_ID=fef32eb300430926a190
	export AUTH_GITHUB_CLIENT_SECRET=f6dfc8b3d0ef40a0e488d47e288864ea33d4b398
	export AUTH_GITHUB_ENTERPRISE_INSTANCE_URL=https://github.csnzoo.com
	export PAGERDUTY_TOKEN="Token token=https://passwordstate.corp.wayfair.com/pid=35826"

	echo "********************** YARN INSTALL **********************"
	yarn install
	echo "********************** YARN DEV **********************"
	LOG_LEVEL=debug NODE_ENV=local yarn dev
}

refreshCache() {
	curl -X POST https://kube-ingress-wdn-pilot-eligibility.service.intrabo1.consul.csnzoo.com/refresh_cache;
	curl -X POST https://kube-ingress-wdn-pilot-eligibility.service.intrapdx1.consul.csnzoo.com/refresh_cache;
	curl -X POST https://kube-ingress-wdn-pilot-eligibility.service.intraiad1.consul.csnzoo.com/refresh_cache;
	curl -X POST https://kube-ingress-wdn-pilot-eligibility.service.intradsm1.consul.csnzoo.com/refresh_cache;
	curl -X POST https://kube-ingress-wdn-pilot-eligibility.service.intrafra1.consul.csnzoo.com/refresh_cache;
	curl -X POST https://kube-ingress-wdn-pilot-eligibility.service.intragrq1.consul.csnzoo.com/refresh_cache;
}


#########################
# SWITCHING DIRECTORIES
#########################

# autoload -U compinit; compinit
# export WORKSPACE_DIR=$HOME/codebase
# ws() { cd $WORKSPACE_DIR/$1 }
# compdef '_path_files -W "$WORKSPACE_DIR" -/ -g "$WORKSPACE_DIR/*"' ws



export JAVA_HOME=$(/usr/libexec/java_home -v 11)



export PATH="/Users/epearson/bin:$PATH"

export FPATH="/Users/epearson/.wf/zsh-completion:$FPATH"
compinit
export PATH="/usr/local/opt/php@7.4/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

export PATH="$HOME/.poetry/bin:$PATH"
