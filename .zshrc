# Colors
export CLICOLOR=1
export LSCOLORS="GxFxCxDxBxegedabagaced"

# Git
alias gitage='for k in $(git branch -r | \
  perl -pe '\''s/^..(.*?)( ->.*)?$/\1/'\''); \
  do echo -e $(git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | \
     head -n 1)\\t$k; done | sort -r'
alias gitloc='git ls-files | while read f; do git blame --line-porcelain $f | grep "^author "; done | sort -f | uniq -ic | sort -n'

# Java
export JAVA_HOME=/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"

# Path
# adds ~/.local/bin (uv, uvx, claude) to PATH
. "$HOME/.local/bin/env"

# Shell
setopt INTERACTIVE_COMMENTS
alias ..="cd .."
alias la="ls -alG"
alias ll="ls -lG"
alias ls="ls -lG"
alias pip=pip3
alias py="python3"
alias py3="python3"
alias python="python3"
alias rm="rm -i"