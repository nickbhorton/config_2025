#
# ~/.bashrc
#


# colors
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias t='tmux'
alias ta='tmux attach -t'

# git stuff
alias gs='git status'
alias gl='git log'
alias gt='git log --graph --decorate --pretty=oneline --abbrev-commit --all'
alias ga='git add'
alias gaa='git add --all'
alias gp='git pull'
alias gb='git branch -a'
alias gc='git commit'


# alias todo='nvim ~/.todo'
alias bashrc='nvim ~/.bashrc'
alias kittyrc='nvim ~/.config/kitty/kitty.conf'
alias vimrc='nvim ~/.config/nvim/init.lua'
alias tmuxrc='nvim ~/.tmux.conf'

source /usr/share/git/completion/git-prompt.sh
PS1=${red}'\u'${cyn}'::'${wht}'\w'${cyn}'$(__git_ps1 "::[%.30s]")'${wht}'> '

# history optimizations
# command is 'history'
HISTTIMEFORMAT="%F %T"
HISTCONTROL=ignoredups

eval $(opam env)
