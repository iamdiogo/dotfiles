
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\[\e[1m\]\[\e[32m\]\u@\h \[\e[34m\]\W\[\e[0m\]]\$ '

# If I have a bin directory, add it to PATH
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

########################
#         Alias        #
########################

alias gs='git status'
alias ga='git add -p'
alias gc='git commit -S -m'
alias gp='git pull'

# gimme colorful grep
alias grep='grep --color=auto'

# sets the wallpaper
alias sw='feh --bg-scale ~/Pictures/Wallpapers/wall.jpg'

# locks the screen
alias lock='betterlockscreen -l dimblur'

# locks and suspends
alias sus='betterlockscreen -s dimblur'

# copies from stdout
alias pbcopy='xclip -selection clipboard'

# loads ranger
alias l='ranger'


########################
#     Miscellaneous    #
########################


# Enable Git autocomplete
[[ -f /usr/share/git/completion/git-completion.bash ]] && . /usr/share/git/completion/git-completion.bash

# Append my top secret alias
[[ -f ~/.secret_alias ]] && . ~/.secret_alias
