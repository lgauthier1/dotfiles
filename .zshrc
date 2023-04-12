export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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
    z
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/laurent.gauthier/Desktop/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/laurent.gauthier/Desktop/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/laurent.gauthier/Desktop/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/laurent.gauthier/Desktop/google-cloud-sdk/completion.zsh.inc'; fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
