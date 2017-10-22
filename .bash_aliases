# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias ls='ls --color=auto'
alias l='ls -alh'
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias grep='grep --color'
alias rm='rm -f'
alias grepr='grep -Ir '
alias g='git'
alias p='python'
alias p3='python3'
alias n='nautilus .'

#tired of accidentally deleting files, requires trash-cli installd by pip install trash-cli:
alias rm=trash
# github
alias gc='git commit'
alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gclean='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
alias gbranches='for d in */ ; do printf "$d  BRANCH: "; echo `cd $d && git symbolic-ref HEAD`; done'
alias gmaster='for d in */ ; do printf "$d  BRANCH: "; echo `cd $d && git checkout master && git fetch --all && git pull origin master`; done'

#Remove all exited docker containers
alias dockerkill1="sudo docker ps -a | grep -v Up | cut -d ' ' -f 1 | xargs sudo docker rm"
alias dockerkill2='sudo docker images | grep "^<none>"| tr -s " "|cut -d " " -f 3 |xargs docker rmi -f'
alias dockerkill='dockerkill2 && dockerkill1'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias vpn='sudo openvpn --config ~/.ovpn_conf/client.ovpn'
alias jn='jupyter notebook'

alias workspace='cd /storage/Backup/Trabajo/tribeclick/workspace'
