# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# add scripts to path
export PATH=~/.scripts:$PATH
export PATH=~/.local/bin:$PATH

# virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
source virtualenvwrapper.sh

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  ssh-agent
)

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent lifetime 9h


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

######## my config ###############

HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=9001
bindkey -v

setopt inc_append_history   # write to history immediately
setopt hist_ignore_dups     # ignore second instance of same event

# set termcolor
colorterm.sh

# init compdef
autoload -Uz compinit
compinit

source /usr/share/doc/pkgfile/command-not-found.zsh

source <(jj util completion zsh)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

# ============================================
# ============ Custom Stuff ==================
# ============================================

setxkbmap -option caps:swapescape
setxkbmap -option compose:ralt
xset r rate 200 30

# ============= Alias ========================
# ============================================
alias spacman='sudo pacman'
alias mus='ncmpcpp'
alias mush='ncmpcpp -h'
alias redo='sudo $(fc -ln -1)'
alias what='dmesg -wHeT'
alias scan='sudo wifi-menu -o'
alias is='ps aux | grep'
# ======= ls alias ===========================
alias ls='ls --color=auto'
alias ll='ls -l'
alias lll='ls -l --time-style=long-iso'
alias llh='ls -lh'
alias la='ls -a'
alias lal='ls -al'
# ======== git alias =========================
alias gd='git diff'
alias glo='git log --graph --format="%C(yellow)%h %C(yellow bold) %cd %C(red bold)%d%C(blue bold) <%an> [%cn]%Creset %s" --abbrev=10u'
alias gla='git log --graph --author-date-order --format=fuller'
alias gl='git log --graph --topo-order'
alias gp='git pull'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias pushup='git push -u origin HEAD'
alias gd='git diff'
alias gds='git diff --staged'
alias gdc='git diff --cached'
alias gdj='git diff --color | diff-so-fancy | less --tabs=4 -RFX --pattern "^(Date|added|deleted|modified): "'
alias gs='git show'
alias gsw='git show --word-diff=color'
alias gst='git stash'
alias gsta='git stash apply'
alias ga='git add'
alias gaa='git add .'
alias gpo='git pull origin/master'
alias gf='git fetch'
alias grh='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
# ======== git doge ===========================
alias wow='git status'
alias very='git'
alias such='git'
alias many='git'
# ======== replace rm with del ================
alias rm='echo "dont use rm"'
alias del='trash -v'
# ======== various ==============================
alias space='du -h --max-depth=1'
alias dd='dd status=progress'
# ======== docker =============================
alias dc='docker compose'

alias music='ncmpcpp'


# ======== Bindings ===========================
# =============================================

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

# fasd aliases
alias v='f -e vim' # quick opening files with vim
alias m='f -e mpv' # quick opening files with mpv
alias o='a -e xdg-open' # quick opening files with xdg-open

# ======== Functions ==========================
# =============================================

# cast a media url to chromecast (via castnow)
function cast {
    youtube-dl --no-playlist -o - $1 | castnow --quiet -
}

# add a url to mpd (via mpc)
function mpcadd {
    host=$2
    if [[ -z $2 ]] ; then
        host='kan'
    fi
    youtube-dl --no-playlist -g $1 | mpc -h $host insert
}

# print a file on a printer with lpr on host uni
function printuni {
    file=$1
    printer=$2
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

function convert-to {
    pandoc -t $1 $2 | xclip -selection c
}

function convert-to-mediawiki {
    convert-to mediawiki $1
}

function record-cam {
    ffmpeg -f v4l2 -video_size $2 -i $1 -c:v libx264 -preset superfast $3
}

function compress-pdf {
    /usr/bin/gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.6 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1
}    

# replace ssh with a wrapper that changes background color of terminal
color-ssh() {
    trap "colorterm.sh" INT EXIT
    colorterm.sh $*
    ssh $*
    }

compdef _ssh color-ssh=ssh
alias ssh=color-ssh

# fasd
eval "$(fasd --init auto)"

# dircolors
#eval `dircolors ~/Repo/dircolors-solarized/dircolors.256dark`
eval "$(dircolors ~/Repo/dircolors-solarized/dircolors.256dark)"

