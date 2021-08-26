#!/bin/bash

source ~/.bash_prompt
source ~/.bash_shortcuts
source ~/.extra
_Z_NO_PROMPT_COMMAND=0 && source /usr/local/etc/profile.d/z.sh
[[ ! "$PATH" == */usr/local/opt/fzf/bin* ]] && PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
source /usr/local/opt/fzf/shell/completion.bash
source /usr/local/opt/fzf/shell/key-bindings.bash
source $(pkg-config --variable=prefix bash-completion)/share/bash-completion/bash_completion
ssh_launch
tmux_launch
export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/laurent.gauthier/Desktop/google-cloud-sdk/path.bash.inc' ]; then . '/Users/laurent.gauthier/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/laurent.gauthier/Desktop/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/laurent.gauthier/Desktop/google-cloud-sdk/completion.bash.inc'; fi
