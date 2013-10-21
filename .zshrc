# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras ruby rails3  cap coffee compleat gem last-working-dir npm redis-cli rvm sublime command-not-found encode64 lol node nyan per-directory-history urltools web-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
    
[[ -n "${key[Up]}"      ]]  && bindkey   "${key[Up]}"       up-line-or-beginning-search
[[ -n "${key[Down]}"    ]]  && bindkey   "${key[Down]}"    down-line-or-beginning-search

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export PATH=$PATH:/home/ramesh/Softwares/adt-bundle-linux-x86_64-20130717/eclipse
export PATH=$PATH:/home/ramesh/Softwares/RubyMine-5.0.2/bin 
export PATH=$PATH:/home/ramesh/Softwares/android-studio/bin
export PATH=$PATH:/home/ramesh/Softwares/vuze/
export PATH=$PATH:/home/ramesh/Softwares/scala-2.9.3/bin 
alias bd=". bd -s"

alias go='nocorrect go'
alias npm='nocorrect npm'
alias coffee='nocorrect coffee'

# go path variables

export GOPATH=$HOME/work/go
export PATH=$PATH:$GOPATH/bin

# Customize to your needs...
export PATH=$PATH:/home/ramesh/.rvm/gems/ruby-1.9.3-p448/bin:/home/ramesh/.rvm/gems/ruby-1.9.3-p448@global/bin:/home/ramesh/.rvm/rubies/ruby-1.9.3-p448/bin:/home/ramesh/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/ramesh/.rvm/bin:/home/ramesh/.rvm/bin
