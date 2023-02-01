# Applications
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias sublime="open -a \"Sublime Text\""

# Git
alias gitage='for k in $(git branch -r | \
  perl -pe '\''s/^..(.*?)( ->.*)?$/\1/'\''); \
  do echo -e $(git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | \
     head -n 1)\\t$k; done | sort -r'
alias gitloc='git ls-files | while read f; do git blame --line-porcelain $f | grep "^author "; done | sort -f | uniq -ic | sort -n'

# Shell
alias ..="cd .."
alias la="ls -al"
alias ls="ls -lGH"
alias ll="ls -l"
alias pip=pip3
alias py="python3"
alias python="python3"
alias py3="python3"
alias rm="rm -i"

# A9
alias a9config="git -C ~/Documents/a9configs/ pull"
function a9joy() {
    echo "Checking a9configs..."
    a9config

    echo ""

    echo "Checking a9joycontrol..."
    git -C  ~/Documents/a9joycontrol/ pull

    echo ""
    
    echo "Starting old bot..."
    bt_addr='D0:55:09:A7:9C:B5'
    # bt_addr='BC:CE:25:7C:E6:EC'
    sudo python3 ~/Documents/a9joycontrol/run_controller_cli.py PRO_CONTROLLER -r ${bt_addr} --log-races --garage "../a9configs/garages/mp_$1.yaml"
}
function a9nav() {
    echo "Checking a9configs..."
    a9config

    echo ""
    
    echo "Checking a9joycontrol..."
    git -C  ~/Documents/a9joycontrol/ pull

    echo ""
    
    echo "Starting CV bot..."
    sudo python3 -m a9nav --settings "../a9configs/$1.yaml" --mp1.league ${2:-bronze} --mp2.league ${3:-bronze} --logfile $(date -I).log
}
