# Lines configured by zsh-newuser-install
HISTFILE=.histfile
HISTSIZE=1000
SAVEHIST=9001
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/shi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
