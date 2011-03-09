[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
source ~/.git-completion.bash
PATH="$PATH:/usr/local/pgsql/bin"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
parse_git_branch(){ git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'; }
export PS1='\w $(parse_git_branch)\$ '

export VISUAL='mate -w'

export HISTCONTROL=ignoredups
export HISTSIZE=5000
export HISTFILESIZE=1000
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear"

# MEMCACHED ALIASES

alias mem="memcached -vv"
alias mem_="memstop;memstart;echo \"Memcached Started.\""
alias memstart="memcached -d -m 24"
alias memstop="killall memcached"

# GIT ALIASES

alias gs="git status"
alias gst='git status'
alias gpl='git fetch --tags && git pull'
alias gpu='git push --tags && git push'
alias gdm='git diff | mate'
alias gc='git commit -a -v'
alias gb='git branch --color'
alias gba='git branch --color -a'
alias gaa='git add .'
alias gco='git checkout'
alias gcl='git clean -fd'

# MISC ALIASES

alias mss="mysql.server start"
alias rs="redis-server"
alias mh="mate /etc/hosts"
alias mbp="mate ~/.bash_profile"

# RAILS ALIASES

alias ss="script/server"
alias sg="script/generate"
alias sc="script/console"

# DIGISTORE ALIASES

alias dm="mem_ && cd ~/Rails/digistore_new/administrators/ && rake db:migrate"
alias da="mem_ && cd ~/Rails/digistore_new/administrators/ && script/server"
alias ds="mem_ && cd ~/Rails/digistore_new/stores/ && script/server"
alias dv="mem_ && cd ~/Rails/digistore_new/vendors/ && script/server"
alias dac="mem_ && cd ~/Rails/digistore_new/administrators/ && script/console"
alias dsc="mem_ && cd ~/Rails/digistore_new/stores/ && script/console"
alias dvc="mem_ && cd ~/Rails/digistore_new/vendors/ && script/console"
alias mda="mate ~/Rails/digistore_new/administrators/app"
alias mds="mate ~/Rails/digistore_new/stores/app"
alias mdv="mate ~/Rails/digistore_new/vendors/app"
alias mdp="mate ~/Rails/digistore_new/administrators/vendor/plugins/"
alias flushdb="mysqldump -u root digistore_development | grep ^DROP | mysql -u root digistore_development"
alias clonedb="echo \"Flushing digistore_development database\";flushdb;echo \"Done.\";echo \"Cloning production db\";cap production db:pull;echo \"Done.\""

# GIT-FLOW ALIASES

alias gf="git flow"
alias gff="git flow feature"
alias gfr="git flow release"
alias gfh="git flow hotfix"

# bash completion settings (actually, these are readline settings)
bind "set completion-ignore-case on" # note: bind used instead of sticking these in .inputrc
bind "set bell-style none" # no bell
bind "set show-all-if-ambiguous On" # show list automatically, without double tab