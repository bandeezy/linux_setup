runtime! debian.vim

set nocompatible              " be iMproved, required
filetype off                  " required
	
" Alway wrap long lines:
set wrap
set linebreak
set nolist      " list disables linebreak
set number      " numbered lines

" Case sensitive if uppercase provided, otherwise case insensitive
set ignorecase
set smartcase

" Tabs turn into spaces
set expandtab ts=2 sw=2 ai

" Set visual mouse
set mouse=v

" Highlight search
set hlsearch

" Limit 120 characters per line
set textwidth=120

if has("syntax")
  syntax on
endif

" Set column for 120 character limit
set colorcolumn=120

" Jump to last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

"let g:ycm_python_binary_path = '/usr/bin/python'
"let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \ 'g:ycm_python_interpreter_path',
  \ 'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" let Vundle manage Vundle, required
Plugin 'VundleVim/vundle.vim'
Plugin 'airblade/vim-gitgutter' "https://github.com/airblade/vim-gitgutter
Plugin 'Valloric/YouCompleteMe' "https://github.com/Valloric/YouCompleteMe
Plugin 'w0rp/ale' "https://github.com/w0rp/ale

"Plugin 'scrooloose/nerdcommenter' "https://github.com/scrooloose/nerdcommenter
"Plugin 'scrooloose/nerdtree' "https://github.com/scrooloose/nerdtree
"Plugin 'flazz/vim-colorschemes' "https://github.com/flazz/vim-colorschemes
"Plugin 'taketwo/vim-ros' "https://github.com/taketwo/vim-ros

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
