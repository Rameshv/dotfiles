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

#set aliases for frequently used commands
alias apti='sudo apt-get install'
alias aptu='sudo apt-get update'
alias gits='git status'
alias gitsh='git stash'
alias gitc='git commit -a'
alias gitpo='git push origin'
alias gitpl='git pull'
alias vims='vim --servername VIM'
alias rt="rake -T"
alias rc="rails c"
alias rs="rails s"
alias gita='git add .'
