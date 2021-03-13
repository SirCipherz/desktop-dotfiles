export ZSH="/home/leo/.oh-my-zsh"

if [[ "$(tty)" == "/dev/tty1" ]]; then
    startx
fi

ZSH_THEME="gentoo"
plugins=(git zsh-completions zsh-syntax-highlighting zsh-autosuggestions)
fpath=(/usr/share/zsh/site-functions $fpath)

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#707370"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

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
alias lss="lsd -lthS --color=auto --reverse"
alias dev="devour"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias ytdl="youtube-dl -f best -o './%(title)s.%(ext)s'"
alias dlsong="youtube-dl -x --audio-format mp3 -f bestaudio -o './%(title)s.%(ext)s'"

pathnfile (){
    echo "`pwd`/$@"
}

webm() {
    ffmpeg -i "$1" -vcodec libvpx-vp9 -b:v 1M -acodec libvorbis "$2.webm"
    dunstify "Media encoder" "Conversion of \"$1\" is finished" -u critical
}

toh265() {
    ffmpeg -hwaccel vaapi -i "$1" -c:v libx265 -crf 26 "$2.mp4"
    dunstify "Media encoder" "Conversion of \"$1\" is finished" -u critical
}

tovp9(){
    ffmpeg -i "$1" -c:v libvpx-vp9 -b:v 128K "$2.mp4"
    dunstify "Media encoder" "Conversion of \"$1\" is finished" -u critical
}

export PATH=$PATH:~/.local/bin
export EDITOR='vim'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
