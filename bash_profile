# root filename .bashrc, use filename .bash_profile
# @versio 0.03a
# @author yuchih <yuchih@2be.com.tw>

if [ -d "/usr/local/zend" ]; then
    PATH=$PATH:/usr/local/zend/bin:/usr/local/zend/mysql/bin:/usr/local/sbin
    LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/zend/lib
fi

if [ -d "/usr/local/lib/node_modules" ]; then
    NODE_PATH=/usr/local/lib/node_modules
fi    

if [ $(uname) == 'Darwin' ] && [ -f `brew --prefix`/etc/bash_completion ]; then
    export CLICOLOR=1
    export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi
    # for Zend Server CE
    MACOSX_DEPLOYMENT_TARGET=10.8
    CFLAGS="-arch i386 -arch x86_64 -g -Os -pipe -no-cpp-precomp"
    CCFLAGS="-arch i386 -arch x86_64 -g -Os -pipe"
    CXXFLAGS="-arch i386 -arch x86_64 -g -Os -pipe"
    LDFLAGS="-arch i386 -arch x86_64 -bind_at_load"
    export CFLAGS CXXFLAGS LDFLAGS CCFLAGS MACOSX_DEPLOYMENT_TARGET

elif [ $(uname) == 'Linux' ] && [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    if [ -f $HOME/.vim/LS_COLORS/LS_COLORS ]; then
        eval $( dircolors -b $HOME/.vim/LS_COLORS/LS_COLORS )
    fi
    . /etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=1

if [ $EUID = 0 ]; then
    export PS1='\[\033[01;31m\]\u\[\033[39m\]@\[\033[37m\]\H\[\033[39m\]: \[\033[32m\]\W\[\033[39m\]$(__git_ps1) \[\033[01;39m\]\$ \[\033[39m\] '
else
    export DYLD_LIBRARY_PATH='/usr/local/zend/lib'
    export PS1='\[\033[01;39m\]\u\[\033[37m\]@\[\033[37m\]\H\[\033[39m\]: \[\033[32m\]\W\[\033[39m\]$(__git_ps1) \[\033[01;39m\]\$ \[\033[39m\] ' 
fi
