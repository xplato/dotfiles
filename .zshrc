# Sourcing local config (env vars, etc.)
if [[ -f ~/.zshrc.local ]]; then
    source ~/.zshrc.local
fi

# Configuration shortcuts files
alias conf="vim ~/Workspace/Configuration/dotfiles/.zshrc"
alias vconf="vim ~/Workspace/Configuration/dotfiles/.vimrc"

# Functions
function mkcd {
	mkdir "$1" && cd "$1"
}

# Functions that run either npm or yarn depending on the project
function generate_function {
    name=$1
    command=$2
    eval "function $name {
        if test -f 'yarn.lock'; then
            yarn $command
        else
            npm run $command
        fi
    }"
}

generate_function build "build"
generate_function start "start"
generate_function dev "dev"
generate_function watch "watch"
generate_function lint "lint"
generate_function format "format"

# Scripts
alias archive="zsh ~/Workspace/Configuration/scripts/archive.sh"

# Basic
alias c="clear"
alias v="vim"
alias q='cd ../'
alias edit='code .'
alias reload="source ~/.zshrc"

# Remap `rm` so I don't have THAT issue happen again
alias rm="rm -i"

# Git
alias gs="git status"
alias gg="git log --oneline --abbrev-commit --all --graph --decorate --color"
alias ga="git add -A ."
alias gc="git commit"
alias push="ga && gc && git push origin"
alias pull="git pull origin"
alias merge="git merge"
alias clone="git clone"
alias branch="git checkout"
alias new="git checkout -b"
alias main="branch main"

# Mapping ls -> eza
alias ls='eza --group-directories-first --oneline'
alias la='eza -a --group-directories-first'
alias lo='eza --group-directories-first --oneline'

# Navigation
alias 1='cd ../'
alias 2='cd ../../'
alias 3='cd ../../../'
alias 4='cd ../../../../'

alias ..='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# Directories
alias docs='cd ~/Documents'
alias work='cd ~/Workspace'
alias down='cd ~/Downloads'
alias desk='cd ~/Desktop'

# Flushing modules
alias flush_node="find ~/Workspace -name 'node_modules' -type d -prune -exec rm -rf {} +"
alias flush_next="find ~/Workspace -name '.next' -type d -prune -exec rm -rf {} +"

# PATH stuff
export PATH="/usr/local/bin:$HOME/bin:/opt/homebrew/bin:/Users/$USER/.local/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
