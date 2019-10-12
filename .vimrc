set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'


let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap . <Plug>(easymotion-overwin-f)

"let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:sparkup = 'sparkup'

"Let vim recognize syntax by file type
syntax enable

"let g:gruvbox_termcolors=16
colorscheme gruvbox
set background=dark
set cursorline
set scrolloff=4

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

set modelines=0

set nospell

set mouse=a

set timeoutlen=1000 ttimeoutlen=0

"Scrolling
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
map <Up> <C-B>
map <Down> <C-F>
nnoremap K kkkkkkkkkkkk
nnoremap J jjjjjjjjjjjj
nnoremap * zk
nnoremap & zj

inoremap , <ESC>
vnoremap , <ESC>
inoremap << ,

"Display command line's tab complete options as a menu
set wildmenu
set wildchar=<Tab> wildmenu wildmode=full

""Ignore case when searching
set ignorecase

""Use and encoding that supports unicode
set encoding=utf-8

"No error bell
set belloff=all

"Automatically write file before closing
set autowrite
set autowriteall
"
""Show number
set number

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

"--------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
"
"--------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

"set leader key
let mapleader=" "
nnoremap <Space> <Nop>


""Pressing tab automatically goes into insert mode
nnoremap <Tab> i<Tab>

""Manage folds
set foldmethod=indent
set foldnestmax=10
set foldlevel=99

""Exit buffer or vim nnoremap <Leader>q :q!<CR>
nnoremap <Leader>c :bd<CR>
nnoremap <Leader>e :Explore<CR>
nnoremap <Leader>b :bprevious<CR>
nnoremap <Leader>n :bnext<CR>
nnoremap <Leader>m <C-W><C-W>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>y :w<CR>:!python %<CR>
nnoremap <Leader>p :set paste<CR>:set noexpandtab<CR>
nnoremap <Leader>P :set nopaste<CR>:set expandtab<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>s :sh<CR>
nnoremap <Leader>f zM
nnoremap <Leader>u zR
nnoremap <Leader>o zO
""Insert one character then escape
nnoremap <Leader>i i <ESC>r
""Save vim session for next launch of vim (toggles on/off)
nnoremap <leader>t :ToggleWorkspace<CR>

""Remove scrollbar and tool bar
set guioptions-=T
set guioptions-=r

"Move to start or end of line
nnoremap <Leader>h 0
nnoremap <Leader>l $
vnoremap <Leader>h 0
vnoremap <Leader>l $

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

filetype off
filetype indent plugin on
