# If you want to run the init configuration again, run following two lines in shell
# autoload -Uz zsh-newuser-install
#  zsh-newuser-install -f

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
unsetopt beep

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/overcode/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set default editor
export EDITOR=nvim
export VISUAL=nvim

# Init starship file
eval "$(starship init zsh)"

# Aliases
source ~/.config/zsh/aliases.zsh

# SSH-agent
source ~/.config/zsh/ssh-agent.zsh

# Plugins

## Zsh-autosuggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

## Zsh-completions
source ~/.config/zsh/plugins/zsh-completions/zsh-completions.plugin.zsh

## Zsh-syntax-highlighting
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/overcode/.local/share/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/overcode/.local/share/miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/overcode/.local/share/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/overcode/.local/share/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add local binaries
export PATH="/home/overcode/.local/bin:$PATH"
