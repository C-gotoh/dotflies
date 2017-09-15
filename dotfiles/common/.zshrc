# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=9001
bindkey -v

setopt inc_append_history   # write to history immediately
setopt hist_ignore_dups     # ignore second instance of same event

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/shi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# set path
export PATH=~/self/bin:$PATH

# set termcolor
colorterm.sh

# alias
alias spacman='sudo pacman'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias gd='git diff'
alias glo='git log --graph --format="%C(yellow)%h %C(yellow bold) %cd %C(red bold)%d%C(blue bold) <%an> [%cn]%Creset %s" --abbrev=10u'
alias gla='git log --graph --author-date-order --format=fuller'
alias gl='git log --graph --topo-order'
alias gp='git pull'
alias gc='git commit'
alias gcm='git commit -m'
alias pushup='git push -u origin HEAD'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git stash'
alias gsa='git stash apply'
alias ga='git add'
alias gaa='git add .'
alias gd='git diff'
alias gdc='git diff --cached'

alias mus='ncmpcpp'
# git doge
alias wow='git status'
alias very='git'
alias such='git'
alias many='git'

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

bindkey '^k' kill-line

bindkey '^[[3~' delete-char
bindkey '^[3;5~' delete-char

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# search through history with arrow keys
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# cast a url to chromecast

function cast {
    youtube-dl --no-playlist -o - $1 | castnow --quiet -
}
# add a url to mpd

function mpcadd {
    host=$2
    if [[ -z $2 ]] ; then
        host='kan'
    fi
    youtube-dl --no-playlist -g $1 | mpc -h $host insert
}
# print a file on a printer with lpr on host uni

function printuni {
    printer=$2
    file=$1
    if [[ -z $2 ]] ; then
        printer='g235_hp'
    fi
    read 'answer?Are you sure you want to print <'$file'> on <'$printer'> ? (y/n) '
    if [[ $answer == 'y' ]] ; then
        echo 'Ok, printing'
        cat $file | ssh uni lpr -P$printer -o sides=one-sided
    else
        echo 'Ok, not printing'
    fi
    }
    
color-ssh() {
    trap "colorterm.sh" INT EXIT
    if [[ "$*" =~ "uni" ]]; then
        colorterm.sh uni
    elif [[ "$*" =~ "dev" ]]; then
        colorterm.sh dev
    else
        colorterm.sh other
    fi
    ssh $*
    }

compdef _ssh color-ssh=ssh
alias ssh=color-ssh
