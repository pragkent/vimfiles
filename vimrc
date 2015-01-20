" General "{{{

" BE iMproved!
set nocompatible

" utf-8 all the way
scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gb18030,cp936,latin1

" How many lines to remember in history
set history=256

" Time to wait after ESC
set timeoutlen=250

" Yanks go on clipboard instead
set clipboard+=unamed

" Walk directory tree up to $HOME looking for tags
set tags=tags;$HOME

set modeline
set modelines=5

" Auto read when a file is changed from outside
set autoread

" Auto write when :! or :make met
set autowrite

" Turn backup off
set nobackup
set nowritebackup

" Hightlight search things
set hlsearch

" Ignore case when searching
set ignorecase

" Case sensitive when input has a capital letter
set smartcase

" Show matches while typing
set incsearch

" Magic for patterns
set magic 

" Vim's default is archaic bourne shell, bring it up to the 90s
let g:is_posix = 1

" Set mapleader
let mapleader = ','

" "}}}

" Formatting "{{{

" Automatically insert the current comment leader after hitting 'o' or 'O'
set fo+=o

" Do not automatically insert a comment leader after an enter
set fo-=r

" Tab to spaces
set tabstop=2
set softtabstop=2

" Default shift width for indent
set shiftwidth=2

" Replace tabs with ${tabstop} spaces
set expandtab
set smarttab

set backspace=eol,start,indent

set autoindent
set smartindent
set cindent
set wrap

" "}}}

" Visual "{{{

" Enable syntax
syntax on

" Mouse enabled all the time
set mouse=a

" Show line number
set number

" Turn on wild menu
set wildmenu

" Show cursor position
set ruler

" Lazyredraw
set lazyredraw

" Backspace and cursor keys wrap to
set whichwrap=<,>

" No noise
set noerrorbells

" No blinking
set novisualbell

" Disable any beeps or flashes on error
set vb t_vb=

" Always show status line
set laststatus=2

" Complete option
set completeopt=menu,preview

set splitbelow
set splitright

" Show unprintable characters
set listchars=tab:\ ·,eol:¬
map <silent> <F12> :set list!<cr>

set pastetoggle=<F10>

" "}}}

" Key mappings " {{{
" vimrc
map <leader>ee :tabnew ~/.vimrc<cr>
map <leader>ss :source ~/.vimrc<cr>

" reload vimrc when write
autocmd! BufWritePost .vimrc source %

" Fast saving
map <silent> <leader>ww :w<cr>
map <silent> <leader>wf :w!<cr>

" Fast quiting
map <silent> <leader>qw :wq<cr>
map <silent> <leader>qf :q!<cr>
map <silent> <leader>qq :q<cr>
map <silent> <leader>qa :qa<cr>

nnoremap <C-h> :tabprev<cr>
nnoremap <C-l> :tabnext<cr>
nnoremap <F5> :GundoTogge<cr>

" Tagbar
nmap <silent> <leader>tb :TagbarToggle<cr>

" Nerd Tree
nmap <silent> <leader>nt :NERDTreeToggle<cr>
let NERDTreeDirArrows=0

" }}}

" AutoCommands " {{{
" "}}}

" Scripts and Plugins " {{{
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'benmills/vimux'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'gmarik/sudo-gui.vim'
Plugin 'godlygeek/tabular'
Plugin 'mattn/emmet-vim'
Plugin 'majutsushi/tagbar'
Plugin 'plasticboy/vim-markdown'
Plugin 'pragkent/neosnippet-snippets'
Plugin 'pragkent/vim-lucius'
Plugin 'pragkent/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on

" Colorscheme
colorscheme lucius
" "}}}
