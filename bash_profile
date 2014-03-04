# This bash profile is for OSX
# And rails development ENV
# @versio 0.01
# @author Eddie <eddie@visionbundles.com>


export CLICOLOR=1
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
export GIT_PS1_SHOWDIRTYSTATE=1

PS1='\[\033[01;31m\]\u\[\033[39m\]@\[\033[37m\]\H\[\033[39m\]: \[\033[32m\]\W\[\033[39m\]$(__git_ps1) \[\033[01;39m\]\$ \[\033[39m\] '

alias sl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
