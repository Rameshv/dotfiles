# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

set fish_plugins git  autojump bundler rvm rails rake node python emoji-clock

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set PATH $PATH /home/ramesh/Softwares/mongodb-linux-x86_64-2.4.6/bin

set PATH $PATH /home/ramesh/.rvm/gems/ruby-1.9.3-p448/bin /home/ramesh/.rvm/gems/ruby-1.9.3-p448@global/bin /home/ramesh/.rvm/rubies/ruby-1.9.3-p448/bin /home/ramesh/.rvm/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /home/ramesh/.rvm/bin /home/ramesh/.rvm/bin

set PATH $PATH /home/ramesh/Softwares/RubyMine-5.4.3.2.1/bin /home/ramesh/Softwares/vuze /home/ramesh/Softwares/idea-IC-129.713/bin /home/ramesh/Softwares/mongodb-linux-x86_64-2.4.7/bin

set PATH $PATH /home/ramesh/Softwares/scala-2.9.3/bin 

set PATH $PATH /home/ramesh/work/depot_tools

set PATH $PATH /home/ramesh/Softwares/redis-2.6.16/src

set PATH $PATH /home/ramesh/Softwares/elixir-0.12.4/bin
set PATH $PATH ~/.tmuxifier/bin
set EDITOR 'vim'

#set aliases for frequently used commands
alias apti='sudo apt-get install'
alias aptu='sudo apt-get update'
alias gits='git status'
alias gitsh='git stash'
alias gitc='git commit -a'
alias gitpu='git push'
alias gitpo='git push origin'
alias gitpl='git pull'
alias gitplo='git pull origin'
alias gitre='git pull -rebase'
alias vims='vim --servername VIM'
alias rt="rake -T"
alias rc="rails c"
alias rs="rails s"
alias gita='git add .'
alias tmux='tmux -2'
alias gitcm='gitc --amend'
alias gitl='git log -p'
alias gitwho='git shortlog -n -s --no-merges'
alias gitundo='git reset --hard'
alias gitb='git branch'
alias mango='tmuxifier load-window mango_project'
alias gitlog='git log --oneline --decorate'

set GYP_GENERATORS ninjai
tmux #send-keys "tmuxifier load-window mango_project"
