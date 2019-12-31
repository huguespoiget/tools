set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdcommenter'
Plugin 'elzr/vim-json'
Plugin 'nvie/vim-flake8'
Plugin 'nikvdp/ejs-syntax'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Sets color theme
colorscheme Tomorrow-Night

set title "Updates the window title
set ruler "Prints the cursor position
set number " print line numbers
set scrolloff=3 "Prints a minimum of 3 lines around cursor
set backspace=indent,eol
syntax on
syntax enable           " enable syntax processingi
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces    
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
let mapleader=","       " leader is comma
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" jk is escape
inoremap jk <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
"Set colorcolumn color to grey
highlight ColorColumn ctermbg=8

set colorcolumn=89 "Sets colored column 89
"Set autoplete mode to zshlike
set wildmode=longest:full,full
"Disables arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

"Sets some uppercase commands to the lowercase equivalent
command WQ wq
command Wq wq
command W w
command Q q
command WA wa
command Wa wa
command QA qa
command Qa qa

"map jj in insert mode ('imap')
imap jj <Esc>
"Prints the Scortex header whenever you open a new file
function! s:insert_header()
  execute "normal! i/**"
  execute "normal! o\<BS> Copyright (c) 2020 Scortex SAS"
  execute "normal! o/"
  normal! o
endfunction
autocmd BufNewFile *.{h,c,hpp,cpp,js} call <SID>insert_header()

function! s:insert_header_py()
  execute "normal! i\"\"\""
  execute "normal! oCopyright (c) 2020 Scortex SAS"
  execute "normal! o\"\"\""
  normal! o
endfunction
autocmd BufNewFile *.{py} call <SID>insert_header_py()

function! s:insert_header_make()
  execute "normal! i#"
  execute "normal! o# Copyright (c) 2020 Scortex SAS"
  execute "normal! o#"
  normal! o
endfunction
autocmd BufNewFile ?akefile* call <SID>insert_header_make()
