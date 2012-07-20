Require:
-------
* xcode 4.3.x or highter
* xcode command line tool
* [Homebrew](http://mxcl.github.com/homebrew/) -- Homebrew

Installation:
------------
    git clone git://github.com/yuchih/dotfiles.git ~/.vim
    brew install bash-completion git nodejs
    curl http://npmjs.org/install.sh | sh
    [sudo] gem install redcarpet pygments.rb
    [sudo] npm -g install instant-markdown-d

Create symlinks:
---------------

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/LS_COLORS ~/.LS_COLORS
    ln -s ~/.vim/gitconfig ~/.gitconfig
    ln -s ~/.vim/bash_profile ~/.bash_profile
    ln -s ~/.vim/bash_completion.d/vimCtags `brew --prefix`/etc/bash_completion/vimctag

Switch to the `~/.vim` directory, and fetch submodules:
------------------------------------------------------

    cd ~/.vim
    git submodule init
    git submodule update

* [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) -- vimcasts.org
* [vim-instant-markdown](https://github.com/suan/vim-instant-markdown.git) -- vim-instant-markdown
