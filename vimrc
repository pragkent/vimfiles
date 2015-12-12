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

map <silent> <leader><cr> :noh<cr>

" Tab
map <leader>tn :tabnew 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" Win
nmap <silent> <C-k> :wincmd k<cr>
nmap <silent> <C-j> :wincmd j<cr>
nmap <silent> <C-h> :wincmd h<cr>
nmap <silent> <C-l> :wincmd l<cr>

" Tmux
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" Go
let g:go_fmt_command = "goimports"
au FileType go nmap <leader>s <plug>(go-implements)
au FileType go nmap <leader>i <plug>(go-info)
au FileType go nmap <leader>gd <plug>(go-doc)
au FileType go nmap <leader>gv <plug>(go-doc-vertical)
au FileType go nmap <leader>gb <plug>(go-doc-browser)

au FileType go nmap <leader>r <plug>(go-run)
au FileType go nmap <leader>b <plug>(go-build)
au FileType go nmap <leader>t <plug>(go-test)
au FileType go nmap <leader>c <plug>(go-coverage)

au FileType go nmap <leader>ds <plug>(go-def-split)
au FileType go nmap <leader>dv <plug>(go-def-vertical)
au FileType go nmap <leader>dt <plug>(go-def-tab)

au FileType go nmap <leader>e <plug>(go-rename)

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
Plugin 'google/vim-codefmt'
Plugin 'google/vim-codefmtlib'
Plugin 'google/vim-glaive'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-syncopate'
Plugin 'mattn/emmet-vim'
Plugin 'majutsushi/tagbar'
Plugin 'plasticboy/vim-markdown'
Plugin 'pragkent/neosnippet-snippets'
Plugin 'pragkent/vim-google-cpp-style'
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
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'cespare/vim-toml'
Plugin 'derekwyatt/vim-scala'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'keith/tmux.vim'

call vundle#end()
filetype plugin indent on

" Undo list
nnoremap <F5> :GundoTogge<cr>

" Tagbar
nmap <silent> <leader>tb :TagbarToggle<cr>

" Nerd Tree
nmap <silent> <leader>nt :NERDTreeToggle<cr>
let NERDTreeDirArrows = 0

" Neo complete
" Use neocomplete
let g:neocomplete#enable_at_startup = 1
" Use smartcase
let g:neocomplete#enable_smart_case = 1
" Disable auto complete
let g:neocomplete#disable_auto_complete = 1

inoremap <expr><C-k> pumvisible() ? "\<C-n>" : neocomplete#start_manual_complete()
inoremap <expr><C-y> neocomplete#close_popup()
inoremap <expr><C-e> neocomplete#cancel_popup()
inoremap <expr><C-g> neocomplete#undo_completion()

" Neo snippet
" Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endi

" Maktaba
call maktaba#plugin#Detect()

" Glaive
call glaive#Install()

" Codefmt
nmap <silent> <leader>ff :FormatCode<cr>
Glaive codefmt clang_format_style=google

" Colorscheme
colorscheme lucius

" airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'base16'
" "}}}
