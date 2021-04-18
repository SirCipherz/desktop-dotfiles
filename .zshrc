if [[ "$(tty)" == "/dev/tty1" ]]; then
	startx
fi

autoload -Uz compinit promptinit && compinit; promptinit; prompt gentoo
autoload -Uz colors && colors

# completion
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*:descriptions'  format '%U%B%d%b%u'
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' rehash true

# bindkeys
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char

# same but fore tty
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char

# history
export HISTSIZE=9999999999
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_space
setopt inc_append_history
setopt hist_reduce_blanks

# history search
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# rewrites
alias cat='bat'
#alias du='dust -b'
#alias ps='procs'

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
alias emerge="sudo emerge"
alias upgrade="emerge --ask --verbose --update --deep --changed-use @world"
alias ytdl="youtube-dl -f best -o './%(title)s.%(ext)s'"
alias dlsong="youtube-dl -x --audio-format mp3 -f bestaudio -o './%(title)s.%(ext)s'"
alias ..="cd .."
alias ...="cd ..."

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

# plugins
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh 2>/dev/null
