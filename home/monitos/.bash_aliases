# /root/.bashrc for monitos4 on Ubuntu16.04.3 LTS
# 2018_01_04
# Set some generic aliases
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
alias getline='cat > /tmp/getline.tmp && . ~/projects/studo/misc/utils/getline.sh'
#
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

