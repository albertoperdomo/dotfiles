export AUTOFEATURE=true

# Some helpful aliases in general
alias ls='ls -lGa'
alias rm='rm -i'
alias sbp='source ~/.profile'

# Git aliases
alias gst='git status'
alias gp='git pull origin master'
alias gp='git push origin master'
alias gb='git branch'
alias gba='git branch -a'
alias gs='git rebase -i origin/mater'
alias gcm='git checkout master'

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
alias g='git'

# delete a word left of the cursor
bind '"\M-d": backward-kill-word'

# show current git branch in bash prompt
parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
export PS1='\[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;36m\]\w\[\e[1;33m\]$(parse_git_branch)\[\e[1;37m\]]$ \[\e[0m\]'

# RVM is the shit! :)
[[ -s "/Users/alberto/.rvm/scripts/rvm" ]] && source "/Users/alberto/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
. `brew --prefix`/etc/bash_completion
fi
