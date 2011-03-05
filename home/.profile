
# MacPorts Installer addition on 2009-09-26_at_03:19:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-09-26_at_03:19:25: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/pgsql/bin:~/bin:$PATH"
export AUTOFEATURE=true

alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gpd='git push origin master && cap deploy'
alias gpd_pro='git push origin master && cap production deploy'
alias mbp='mate ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias gpds='git push origin master && cap deploy && spanish_pickler push'
alias tgpd='rake test:all && git push origin master && cap deploy'
alias tgpds='rake test:all && git push origin master && cap deploy && spanish_pickler push'
alias tgpd_pros='rake test:all && git push origin master && cap production deploy && spanish_pickler push'
alias tgpd_pro='rake test:all && git push origin master && cap production deploy'
alias tgpdm_pro='rake test:all && git push origin master && cap production deploy:migrations'
alias tgpdm_pros='rake test:all && git push origin master && cap production deploy:migrations && spanish_pickler push'
alias tgpdm_pros='rake test:all && git push origin master && cap production deploy:migrations && spanish_pickler push'
alias tgpdms='rake test:all && git push origin master && cap deploy:migrations && spanish_pickler push'
alias tfgpdmd_prom='rake features:all && git push origin master && cap deploy:migrations && cap production:migrations deploy'
alias tgpdd='rake features:all && git push origin master && cap deploy && cap production deploy'
alias gpdd='git push origin master && cap deploy && cap production deploy'
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
alias gpdm='git push origin master && cap deploy:migrations'
alias gpdm_pro='git push origin master && cap production deploy:migrations'
alias tst='rake ts:stop && rake ts:start RAILS_ENV=test'
alias tsd='rake ts:stop RAILS_ENV=test && rake ts:start'

parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}

# delete a word left of the cursor
bind '"\M-d": backward-kill-word'

export PS1='\[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]@\[\e[1;32m\]\h\[\e[1;37m\]:\[\e[1;36m\]\w\[\e[1;33m\]$(parse_git_branch)\[\e[1;37m\]]$ \[\e[0m\]'

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
