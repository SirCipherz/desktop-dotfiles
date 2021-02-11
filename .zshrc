export ZSH="/home/leo/.oh-my-zsh"

ZSH_THEME="gentoo"
plugins=(git)
fpath=(/usr/share/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh

alias rsync="rsync --progress"
alias ls='lsd -lh --color=auto'
alias wget='wget -c'
alias reboot='sudo reboot'
alias du='du -h'
alias df='df -h'
alias cpb='rsync --info=progress2'
alias mv='mv -vi'
alias cp='cp -vir'
alias rm='rm -vir'
alias mkdir='mkdir -pv'

alias lsl="ls -t --date relative"
alias lst="ls --tree"
alias lsa="ls -A"

alias dev="devour"
alias emacs="emacsclient"

export PATH=$PATH:~/.local/bin

pathnfile (){
    echo "`pwd`/$@"
}
