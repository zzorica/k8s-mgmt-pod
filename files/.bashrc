export LS_OPTIONS='--color=auto'
alias ls='ls -lah $LS_OPTIONS'

function show_ip {
hostname -I
}

PS1="\u@$(show_ip)$ "
