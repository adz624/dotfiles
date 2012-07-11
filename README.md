Installation:
------------
    git clone git://github.com/yuchih/dotfiles.git ~/.vim

Create symlinks:
---------------

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/LS_COLORS ~/.LS_COLORS
    ln -s ~/.vim/gitconfig ~/.gitconfig
    ln -s ~/.vim/bash_profile ~/.bash_profile

Switch to the `~/.vim` directory, and fetch submodules:
------------------------------------------------------

    cd ~/.vim
    git submodule init
    git submodule update

* [vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) -- vimcasts.org
* [vim-instant-markdown](https://github.com/suan/vim-instant-markdown.git) -- vim-instant-markdown
