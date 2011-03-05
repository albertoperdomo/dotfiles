
# MacPorts Installer addition on 2009-09-26_at_03:19:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-09-26_at_03:19:25: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/pgsql/bin:~/bin:$PATH"
export AUTOFEATURE=true

# Some helpful aliases in general
alias ls='ls -lG'
alias rm='rm -i'
alias mbp='mate ~/.profile'
alias sbp='source ~/.profile'

# Git aliases
alias gst='git status'
alias gpd='git pull origin master'
alias gpd='git push origin master'
alias gb='git branch'
alias gba='git branch -a'

# Rails
alias rdbp='rake db:migrate && rake db:test:prepare'
alias rta='rake test:all'
alias ss='rails server'
alias sc='rails console'
alias sg='rails generate'
alias sp='rails plugin'
alias tdl='tail -f log/development.log'
alias sdb='rails dbconsole'
alias rdp='rake db:migrate && rake db:test:prepare'
alias c='cucumber'

# delete a word left of the cursor
bind '"\M-d": backward-kill-word'

# show current git branch in bash prompt
parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
export PS1='\[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;36m\]\w\[\e[1;33m\]$(parse_git_branch)\[\e[1;37m\]]$ \[\e[0m\]'

# RVM is the shit! :)
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
