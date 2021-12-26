export LS_OPTIONS='--color=auto'
alias ls='ls -lah $LS_OPTIONS'

function show_ip {
hostname -I
}

PS1="\u@$(show_ip)$ "

alias myip='dig +short myip.opendns.com @resolver1.opendns.com'

