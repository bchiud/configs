# Applications
alias sublime="open -a \"Sublime Text\""

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
    a9config
    bt_addr='D0:55:09:A7:9C:B5'
    # bt_addr='BC:CE:25:7C:E6:EC'
    sudo python3 ~/Documents/a9joycontrol/run_controller_cli.py PRO_CONTROLLER -r ${bt_addr} --log-races --garage "../a9configs/$1_mp1_garage.yaml"
}
function a9nav() {
    a9config
    sudo python3 -m a9nav --settings "../a9configs/$1_switch.yaml" --league "$2" --logfile $(date -I).log
}
