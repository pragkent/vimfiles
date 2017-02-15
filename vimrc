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
set mouse=v

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

" Show unprintable character
set listchars=tab:\ ·,eol:↩
map <silent> <F12> :set list!<cr>

set pastetoggle=<F10>

set guifont=Menlo:h17

" "}}}

" Key mappings "{{{
" .vimrc
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
map <leader>tn :tabnew<space>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<space>

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

" "}}}

" Plugins "{{{

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins "{{{
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jonathanfilip/vim-lucius'

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-eunuch'
Plug 'sjl/gundo.vim'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'

Plug 'fatih/vim-go'
Plug 'keith/tmux.vim'
Plug 'lepture/vim-jinja'
Plug 'rust-lang/rust.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'cespare/vim-toml'
Plug 'derekwyatt/vim-scala'
Plug 'plasticboy/vim-markdown'
Plug 'hdima/python-syntax'

" "}}}

" Initialize plugin system
call plug#end()

" "}}}

" Colorscheme "{{{
colorscheme lucius
LuciusDarkLowContrast
" "}}}

" Plugins Configurations "{{{

" NERDCommenter "{{{

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" "}}}


" AirLine "{{{

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme = 'lucius'

" "}}}

" Golang "{{{

let g:go_fmt_command = "goimports"

" Highlights
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Key map
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <leader>ds <Plug>(go-def-split)
au FileType go nmap <leader>dv <Plug>(go-def-vertical)
au FileType go nmap <leader>dt <Plug>(go-def-tab)

au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>gb <Plug>(go-doc-browser)

au FileType go nmap <leader>s <Plug>(go-implements)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>e <Plug>(go-rename)

" "}}}

" YAPF "{{{
au FileType python nmap <leader>y :call yapf#YAPF()<cr>
" "}}}

" Gundo "{{{
nmap <F5> :GundoToggle<cr>
" "}}}

" Nerd Tree "{{{
nmap <silent> <leader>nt :NERDTreeToggle<cr>
" "}}}

" Tagbar "{{{
nmap <silent> <leader>tb :TagbarToggle<cr>
" "}}}

" "}}}
