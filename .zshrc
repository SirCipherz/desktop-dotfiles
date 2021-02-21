export ZSH="/home/leo/.oh-my-zsh"

ZSH_THEME="gentoo"
plugins=(git)
fpath=(/usr/share/zsh/site-functions $fpath)

source $ZSH/oh-my-zsh.sh

# rewrites
alias cat='bat'
alias du='dust -b'
alias ps='procs'

# adding arguments by default
alias rsync="rsync --info=progress2 -rzP"
alias ls='lsd -lh --color=auto'
alias wget='wget -c'
alias reboot='sudo reboot'
alias df='df -h'
alias mv='mv -vi'
alias cp='cp -vir'
alias rm='rm -vir'
alias mkdir='mkdir -pv'
alias emacs='emacs -nw'
alias grep="grep --color=auto -nH"

# time savers
alias lsl="lsd -lth --color=auto --date relative --reverse"
alias lst="lsd -lth --color=auto --tree"
alias lsa="lsd -Alth --color=auto"
alias dev="devour"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"

pathnfile (){
    echo "`pwd`/$@"
}

export PATH=$PATH:~/.local/bin
export EDITOR='vim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
