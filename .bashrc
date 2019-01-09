
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\e[1m\e[32m\u@\h \e[34m\W\e[0m]\$ '


########################
#         Alias        #
########################


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


# Append my top secret alias
[[ -f ~/.secret_alias ]] && . ~/.secret_alias
