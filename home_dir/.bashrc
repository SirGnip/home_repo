# WARNING: Do NOT edit this config file in ~/. Make sure you are editing the
# source file at ~/home_repo/home_dir and run bin/refreshHomeFromRepo to update.

alias ll='ls -l'
alias ls='ls -F --color=auto --show-control-chars'

export HISTSIZE=10000
export HISTFILESIZE=10000

export PATH="$PATH:~/bin:~/home_repo/bin"
export PATH="$PATH:/c/Program Files (x86)/Meld"

# aliases "cd" to be a command that maintains a directory stack
source ~/home_repo/bin/cd_stack.sh

# .bashrc_local - Hook for adding local overrides to master .bashrc
# NOTE: Keep the sourcing of .bashrc_local as the last thing in .bashrc
# so that .bashrc_local has the ability to override anything in .bashrc.
if [ -f ~/.bashrc_local ]; then
    source ~/.bashrc_local
fi

