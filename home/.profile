export PATH=/usr/local/bin:$PATH

# Some helpful aliases in general
alias ls='ls -lGa'
alias rm='rm -i'

# Git aliases
alias gst='git status'
alias gb='git branch'
alias gba='git branch -a'

# Rails
alias ss='rails server'
alias sc='rails console'
alias sg='rails generate'

# delete a word left of the cursor
bind '"\M-d": backward-kill-word'

# show current git branch in bash prompt
parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ →\ \1/'
}
export PS1='\[\e[1;37m\][\[\e[1;35m\]\u\[\e[1;37m\]:\[\e[1;36m\]$(~/.spwd/spwd -m 40)\[\e[1;33m\]$(parse_git_branch)\[\e[1;37m\]]$ \[\e[0m\]'

# bash-completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
. `brew --prefix`/etc/bash_completion
fi

# RVM is the shit! :)
[[ -s "/Users/alberto/.rvm/scripts/rvm" ]] && source "/Users/alberto/.rvm/scripts/rvm"  # This loads RVM into a shell session.
