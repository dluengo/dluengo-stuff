syntax on
set ruler
set number
retab 4
set incsearch
set hlsearch

" In order to introduce a real tab press ctrl+v <tab>
set expandtab
set softtabstop=4
set shiftwidth=4

" Save the content of the clipboard register '+' upon exit.
autocmd VimLeave * call system("xsel -ib", getreg('+'))

"autocmd FileType make           setlocal noexpandtab

"execute pathogen#infect()

" This is for taglist to open on the right side and widther than usual
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40

" Consider .ifc files as if they were just C files.
au BufRead,BufNewFile *.ifc set filetype=c

" Consider .gen files as if they were just C files.
au BufRead,BufNewFile *.gen set filetype=c

" Needed by vundle.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"Plugin 'Valloric/YouCompleteMe'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required

" This line is bothering me. The plugin thing is setting noexpandtab, so it
" makes me introduce tabs instead of 4 spaces in my files >:-(. On the other
" hand I'm not sure if this will break something with Vundle. Let's give it a
" try.
" filetype plugin indent on    " required
filetype indent on

" YCM: Don't ask for confimation on .ycm_extra_conf.py files
let g:ycm_confirm_extra_conf = 0

