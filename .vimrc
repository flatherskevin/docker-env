set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'davidhalter/jedi-vim'
Plugin 'robbyrussell/oh-my-zsh'
Plugin 'hashivim/vim-terraform'
call vundle#end() 
filetype plugin indent on

set backupdir=~/.vim/tmp//,.
set directory=~/.vim/tmp//,.
set tabstop=4
