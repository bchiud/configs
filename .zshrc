# Git
alias gitage='for k in $(git branch -r | \
  perl -pe '\''s/^..(.*?)( ->.*)?$/\1/'\''); \
  do echo -e $(git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | \
     head -n 1)\\t$k; done | sort -r'
alias gitloc='git ls-files | while read f; do git blame --line-porcelain $f | grep "^author "; done | sort -f | uniq -ic | sort -n'

# Terminal
alias ..="cd .."
alias la="ls -al"
alias ls="ls -lGH"
alias ll="ls -l"
alias pip=pip3
alias py="python3"
alias python="python3"
alias py3="python3"
alias rm="rm -i"
export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"
