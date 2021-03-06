# .bashrc

#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
alias svn='svn --no-auth-cache' 

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

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

export PIP_EXTRA_INDEX_URL="https://pypi.xes-mad.com/simple"

if [ "$HOSTNAME" = "vxworks0" ]
  then
    export LM_LICENSE_FILE=/mnt/vxworks/license/vxworks0.lic
elif [ "$HOSTNAME" = "vxworks1" ]
  then
    export LM_LICENSE_FILE="/usr/local/share/vxworks/vxworks1.lic"
fi

 FONT="ter-120n" 

export PUB="/mnt/Work/pub/users/csgreen/"
