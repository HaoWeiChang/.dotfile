export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="afowler"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# alias config set
alias vi="nvim"
alias luamake=/home/haowei/Downloads/lua-language-server/3rd/luamake/luamake
alias haowei-server="ssh hwcode@192.168.0.10"

# export TERM="tmux-256color"
export XDG_CONFIG_HOME=$HOME/.config

# export Golang environment
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# lua lsp 
export PATH=$PATH:$HOME/personal/lua-language-server/bin/

# shell script
export PATH=$HOME/.local/bin:$PATH

# use yarn need fast
export PATH=$PATH:$HOME/.yarn/bin

# bun
export BUN_INSTALL="/home/haowei/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# nvm control node version
export NVM_DIR=$HOME/.config/nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# need this shell script
bindkey -s ^f "tmux-sessionizer\n"



# lazy function
git_commit() {
    if [[ $# -gt 1 ]] then
        echo "u just need input command"
    else
        if [[ $# -eq 1 ]] then
            text=$1
        else
            text="no command just want push"
        fi
        pushd ~/.dotfiles/
        git add .
        git commit -m $text
        git push
        popd
    fi
}
