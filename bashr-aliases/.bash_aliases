alias ll='ls -l'
alias s='sudo'
alias b='cd ..'
alias c='clear'
alias i='sudo apt install'
alias m='micro'

please() {
    sudo $(history -p !!)
}

alias tailup='sudo tailscale up  --accept-routes --exit-node= --accept-dns=true'
alias tailupVPN='sudo tailscale up --accept-routes --exit-node=nas --accept-dns=true'
alias taildown='sudo tailscale down'
alias tailstat='tailscale status'

alias servermount='sudo mount /srv/server_main'
alias sshserver='ssh truenas_admin@{SERVER_IP}'

alias emsdk='source ~/emsdk/emsdk_env.sh' 

alias nowifite='sudo airmon-ng stop wlp1s0mon'

alias py='python3'

venv() {
    if [ -z "$1" ]; then
        echo "Existing venvs:"
        ls "$HOME/venvs"
        echo ""
        echo "Activate:  venv <name>"
        echo "Create:    venv new <name>"
        return
    fi

    if [ "$1" = "new" ] && [ -n "$2" ]; then
        python3 -m venv "$HOME/venvs/$2"
        echo "Created '$2'. Run: venv $2"
        return
    fi

    if [ -d "$HOME/venvs/$1" ]; then
        source "$HOME/venvs/$1/bin/activate"
    else
        echo "No venv '$1'. Run: venv new $1"
    fi
}
