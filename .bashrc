
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\[\e[1m\]\[\e[32m\]\u@\h \[\e[34m\]\W\[\e[0m\]]\$ '

# If I have a bin directory, add it to PATH
if [ -d "$HOME/bin" ] ; then
  PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/.installs/flutter/bin" ] ; then
  PATH="$PATH:$HOME/.installs/flutter/bin"
fi

if [ -d "$HOME/.installs/android-studio/bin" ] ; then
  PATH="$PATH:$HOME/.installs/android-studio/bin"
fi

# feup-comp
if [ -d "$HOME/.installs/javacc-6.0/bin" ] ; then
  PATH="$PATH:$HOME/.installs/javacc-6.0/bin"
fi

########################
#         Alias        #
########################

# gimme colorful grep
alias grep='grep --color=auto'

# sets the wallpaper
alias sw='feh --bg-scale'

# change wallpaper
alias ref='systemctl --user restart random_wallpaper.service'

# locks the screen
alias lock='betterlockscreen -l dimblur'

# locks and suspends
alias sus='betterlockscreen -s dimblur'

# kill Xorg and open it again
#alias restart='killall Xorg && sleep 5 && startx & disown'

# copies from stdout
alias pbcopy='xclip -selection clipboard'

# loads ranger
alias l='ranger'
alias composer='/home/diogo/.installs/composer/composer.phar'

# show me the 10 last modified files here
alias llast='ls -t | head'

# open a virtual serial port
alias osoc='socat -d -d pty,raw,echo=0 pty,raw,echo=0'

# git #
alias gs='git status'
alias ga='git add -p'
alias gc='git commit -S -m'

# python #
alias act='source env/bin/activate'
alias cenv='python -m virtualenv env'
alias web='python -m http.server 8000'

# tmux #
alias tmuxa='tmux attach-session'

export ANDROID_HOME=/home/diogo/.installs/android-studio-installed

# disable yarn emoji
#alias yarn='yarn --no-emoji'
#ya() {
#  yarn "$@" --no-emoji
#}

# php #
export PATH=$PATH:/home/diogo/.config/composer/vendor/bin


########################
#     Miscellaneous    #
########################

# for opening the same directory on new terminal
export PROMPT_COMMAND="pwd > /tmp/current_directory"

# Enable Git autocomplete
[[ -f /usr/share/git/completion/git-completion.bash ]] && . /usr/share/git/completion/git-completion.bash

# Append my top secret alias
[[ -f ~/.secret_alias ]] && . ~/.secret_alias

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
