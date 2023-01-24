alias cat=bat
alias vi=nvim
alias grep='grep --color'
alias ll='exa -lh'
alias la='ls -lhA'


zstyle :omz:plugins:ssh-agent identities lgauthier1

eval "$(/opt/homebrew/bin/brew shellenv)"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(
    git
    ssh-agent
    zsh-syntax-highlighting
    zsh-autosuggestions
    fzf
    )

source $ZSH/oh-my-zsh.sh



launch_tmux() {
    tmux new-session -d -s TMUX
    tmux select-window -t 1
    tmux split-window -h 
    tmux split-window -v 'htop'
    tmux select-pane -t 1.1
    tmux split-window -v 
    tmux select-pane -t 1.1
    tmux attach -t TMUX
    
}

if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || launch_tmux
fi


