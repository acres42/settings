#!/bin/zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Users/aroselee/.rvm/bin

#ssh for gridserver
alias dcgc='ssh -i ~/.ssh/dcgc_rsa digitalcreative.gannett.com@s137273.gridserver.com'
alias dsgc='ssh 137.117.82.177'

#initialize rupa/z
. ~/bin/z.sh

#clean up below. copied over from bash

export EDITOR='vim'

export MYNAME='AC'

#export PS1="\w > \A > \u$"
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#export PS1='\w > \A > \u > $(__git_ps1 "(%s)") > '
#export PS1=" %t> %d>"
export EDITOR='subl -w'

# GREP_COLOR codes
# Attributes:   Text color:    Background:
#   0 reset all   30 black       40 black
#   1 bright      31 red         41 red
#   2 dim         32 green       42 green
#   4 underscore  33 yellow      43 yellow
#   5 blink       34 blue        44 blue
#   7 reverse     35 purple      45 purple
#   8 hidden      36 cyan        46 cyan
#                 37 white       47 white
# Separate with ";"
#
export GREP_COLOR="31;47"

# Specify options grepshould use by default
export GREP_OPTIONS="--color=auto"

#export LESS='-MN'
export PATH="$HOME/bin:/usr/local/php5/bin:$HOME/composer-packages/vendor/bin:vendor/bin:~/.composer/vendor/bin/:$HOME/.composer/vendor/cache/:/usr/local/bin:usr/local/sbin:/usr/local/git/bin:$PATH:/usr/X11/bin"
# line below added during the l4/composer install 7/26/2013
#export PATH="/Applications/MAMP/bin/php/php5.4.10/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PHP_AUTOCONF=/usr/local/bin/autoconf

export LESS='-eirMX'

export HISTSIZE=10000                      # 500 is default
export HISTFILESIZE=1000000
export HISTTIMEFORMAT='%b %d %I:%M %p '    # using strftime format
export HISTCONTROL=ignoreboth              # ignoredups:ignorespace
export HISTIGNORE="history:pwd:exit:df:ls:ls -la:ll"

export EDITOR='subl -w'

alias ll='ls -lahG'
alias home='cd ~'
alias up='cd ..'
alias h='history'
alias catshell='cat /etc/shells'

# can also redefine a command to add options
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias df='df -h'
alias du='du -h'
alias mkdir='mkdir -p'
alias ht='cd /Applications/MAMP/htdocs/'
alias myapps='cd /Users/aroselee/Applications/'
alias oht='open http://localhost:80'

#aliases from dave
alias bit='open -a "bit bucket"'
alias fla='open -a "Adobe Flash CS5.5.app"'
alias fullLog='cat /Applications/MAMP/logs/php_error.log'
alias goD='cd ~/Desktop/'
alias goPR='cd /Volumes/General/PRScripts/'
alias goRepos='cd ~/Desktop/ACRepo'
alias h='history'
alias inToolbox='open ~/Desktop/PRLiteToolbox.mxp'
alias ll='ls -lahG'
alias moveSwf='cp -i /Users/aroselee/Library/Application\ Support/Adobe/Flash\ CS5.5/en_US/Configuration/WindowSWF/toolboxPanel.swf /Users/dhill2/Desktop/repos/pointroll-lite/PRLiteToolbox/PRLiteToolbox.swf'
alias moveSwfVid='cp -i /Users/aroselee/Library/Application\ Support/Adobe/Flash\ CS5.5/en_US/Configuration/WindowSWF/VideoBuilderTEST.swf /Users/dhill2/Desktop/repos/pointroll-lite/VideoPanelBuilder/VideoBuilder.swf'
alias openSQL='/Applications/MAMP/Library/bin/mysql -uroot -proot'
alias sLocal='open -a "Google Chrome.app" http://localhost:8888/'
alias sublime='open -a "Sublime Text 2.app"'
alias up='cd ..'
alias watchLog='tail -f /Applications/MAMP/logs/php_error.log'
alias xBreak='banner -w 35 BREAK'
alias xLog='tail 10 /Applications/MAMP/logs/php_error.log'

#laravel aliases
alias art='php artisan'
alias dbms='art migrate:refresh --seed'
alias as='php artisan serve --port 80'
alias g:c='art generate:controller'
alias g:f='art generate:form'
alias g:mig='art generate:migration'
alias g:m='art generate:model'
alias g:r='art generate:resource'
alias g:scaf='art generate:scaffold'
alias g:s='art generate:seed'
alias g:t='art generate:test'
alias g:v='art generate:view'
alias t="vendor/bin/phpunit"


# composer aliases
alias cda='composer dump-autoload -o'
alias cu='composer update'
alias ci='compser install'

#aliases from eric
alias of='open .'
#pushing stuff live#
alias dcgc='ssh digitalcreative.gannett.com@s137273.gridserver.com'
# make a directory and cd into it
function mkcd() {
  mkdir -p "$1" && cd "$1";
}

#vagrant aliases
alias vs='vagrant status'
alias vu='vagrant up'
alias vh='vagrant halt'
alias vd='vagrant destroy -f'
alias vf="VBoxManage list runningvms -l | grep 'Host path\|guest port = 80' | sed \"s/.*host\ port\ =\ \([0-9]*\),.*/Port: \1/\" | sed \"s/.*path:\ '\([a-zA-Z\/]*\).*/Path: \1/\""

#encrypt pw file

getPW(){
        openssl des3 -d -salt -in ~/Desktop/textFile.txt -out ~/Desktop/TempFile.txt
        open ~/Desktop/TempFile.txt
}

hidePW(){
        openssl des3 -salt -in ~/Desktop/TempFile.txt -out ~/Desktop/textFile.txt
        rm ~/Desktop/TempFile.txt
}

# can be used to fix common typos you make
alias pdw='pwd'


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting