#Prompt
PS1='%F{blue}%~ %(?.%F{green}.%F{red})%#%f '

#vim keybindings
bindkey -v

#add custom shell scripts from the folder .shell-scripts
for f in ~/.dotfiles/.shell_scripts/*; do source $f; done
# Load commands specific to this machine and or user
[ -f ~/.user_specific_zshrc ] && source ~/.user_specific_zshrc

#ALIAS
alias v="nvim"
alias l="ls -lah"

# Use fzf for history search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Setup Pyevn
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

#pyenv installation
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
#pynev-virtualenv
eval "$(pyenv virtualenv-init -)"
