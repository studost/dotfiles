# /etc/bash.bashrc.local for SuSE Linux
#
# Set some generic aliases
#
# 2013-08-12
# 2013-08-12
# 2013-08-12
# 11 2013-08-12
# 12 2013-08-12
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -haltr --group-directories-first'
alias lll='ls -hal --color=no --group-directories-first'
alias lld='ls -halF -d */'
alias ls='ls --color=auto'
alias ltr='ls -haltr --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias mv='mv -v'
alias cp='cp -v'
alias rm='rm -v'
alias whcih='which'
# alias svup='sudo zypper ref && sudo zypper up'
# alias svre="sudo /etc/init.d/snagview restart"
alias gi="~/git-info.sh"
alias gis="~/projects/studo/misc/git/git_status"
alias gitt="~/projects/studo/misc/git/gitt"
# alias ssh="~/projects/studo/misc/utils/ush"
alias sshs='ssh -D 12345 -f -C -q -N fcfrmonitos02 && /cygdrive/c/Program\ Files\ (x86)/Mozilla\ Firefox/firefox.exe &'
alias getline='cat > /tmp/getline.tmp && . /mnt/c/projects/studo/misc/utils/getline.sh'
# alias sm='svn mv'
#
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
#
alias hsp+='cd ~/projects/'
# 2015_08_22
alias df='df -hT'
# dat#
alias vmrun='/cygdrive/c/Program\ Files\ \(x86\)/VMware/VMware\ Workstation/vmrun.exe'
# alias ping='/cygdrive/c/Windows/System32/ping -t'
alias open='cygstart'
alias gvim='/cygdrive/c/Program\ Files\ \(x86\)/Vim/vim80/gvim.exe'
alias vera='/cygdrive/c/Program\ Files/VeraCrypt/VeraCrypt.exe'
alias chrome='/cygdrive/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'
# alias ifconfig='ipconfig -all'
# alias n+='/usr/local/nagios/'
# alias nl3+='/opt/snag-view/appliance/nagios/libexec/'
# alias sv+='ll /opt/snag-view/'
# alias svdl+='/opt/snag-view/data/logs/'
# alias tc='truecrypt -t -k "" --protect-hidden=no'
# alias tcd='truecrypt -d'
# alias vi='vim'
# 2009-08-26, UST
# If id command returns zero, you’ve root access.
#--------------------------------------------------
# if [ $(id -u) -eq 0 ];
# then # you are root, set red colour prompt
#   PS1="\\[$(tput setaf 1)\\]\\u@\\h:\\w # \\[$(tput sgr0)\\]"
# else # normal
#   PS1="[\\u@\\h:\\w] $"
# fi
#-------------------------------------------------- 

