# Require:
* xcode 4.3.x or highter
* xcode command line tool
* [Homebrew](http://mxcl.github.com/homebrew/) -- Homebrew

# Installation:
    git clone git://github.com/yuchih/dotfiles.git ~/.vim
    brew install bash-completion git nodejs
    [sudo] gem install redcarpet pygments.rb
    [sudo] npm -g install instant-markdown-d

# Create Symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gitconfig ~/.gitconfig
    ln -s ~/.vim/ctags ~/.ctags
    [osx] ln -s ~/.vim/bash_profile ~/.bash_profile
    [linux] cat ~/.vim/bash_profile >> ~/.bashrc
    [macos] ln -s ~/.vim/bash_completion.d/vimCtags `brew --prefix`/etc/bash_completion/vimctag

    [root]
    ln -s ~User/.vim .
    ln -s ~User/.vimrc .
    ln -s ~User/.bash_profile .profile

# Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

* [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) -- vimcasts.org
* [vim-instant-markdown](https://github.com/suan/vim-instant-markdown.git) -- vim-instant-markdown
