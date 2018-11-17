"Let vim recognize syntax by file type
syntax enable

"Font settings
set guifont=Consolas:h12:cANSI:qDRAFT

"plugin settings
set nocompatible
filetype indent plugin on

"Syntax recognition
syntax on

"Helps keep vim secure
set modelines=0

"The number of screen lines to keep above and below the curser
set scrolloff=5

"Display command line's tab complete options as a menu
set wildmenu
set wildchar=<Tab> wildmenu wildmode=full

"Show info in bottom status line
set showmatch
set showcmd
set showmode

"Ignore case when searching
set ignorecase
"Automatically switch search to case-sensitive when search contains uppercase
set smartcase

"Makes backspace work like other programs
set backspace=indent,eol,start
set backspace=2


"Always show cursor position
set ruler

"Use and encoding that supports unicode
set encoding=utf-8

"No error bell
set belloff=all

"Escape key mappings
inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>l
inoremap hh <Esc>o
inoremap kk <Esc>0

"Automatically write file before closing
set autowrite
set autowriteall

"Show number
set number

"New lines inherit the indentation of previous lines
set autoindent
"Indent using 3 spaces
set tabstop=3
"When shifting, indent using 3 spaces
set shiftwidth=3
"Converts tabs to spaces
set expandtab
"Insert 'tabstop' number of spaces when the 'tab' key is pressed
set smarttab

"set leader key
let mapleader=" "
nnoremap <Space> <Nop>

"manage buffers - note Bufstop has many other ways to switch buffers
nnoremap <Leader>b :BufstopFast<CR>

"Status line settings  (conflicts with ?)
set laststatus=2 
"set statusline=
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%4*\ %<%F%*            "full path

"Move between windows with 'Alt-arrow' keys
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"Sneak settings
map . <Plug>Sneak_s
map , <Plug>Sneak_S
map f <Plug>Sneak_f
map F <Plug>Sneak_t
map t <Plug>Sneak_F
map T <Plug>Sneak_T

"Vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 50, 6)<CR>M
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 50, 6)<CR>M
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 50, 8)<CR>M
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 50, 8)<CR>M
nmap <Leader>a <C-B>
nmap <Leader>z <C-F>
nmap <Leader>s <C-U>
nmap <Leader>x <C-D>

"html autocomplete - issue with hlsearch
"inoremap >< ><Esc>?<[a-z]<CR>lyiwh/[^%]><CR>la</<C-r>"><Esc>F<i
"inoremap >> ><Esc>?<[a-z]<CR>lyiwh/[^%]><CR>la</<C-r>"><Esc>F<i<CR><CR><Esc>ki<Tab>

"css completion
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
inoremap vv <C-x><C-o>
inoremap qq <C-o>


"Pressing tab automatically goes into insert mode
nnoremap <Tab> i<Tab>

"global search and replace
nnoremap <Leader>r :%s/

"Manage folds
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

"hlsearch
set hlsearch
set incsearch
nnoremap <Leader>Y :nohl<CR>
nnoremap <Leader>y :nohlsearch<CR>

"Write file
nnoremap <Leader>w :w!<CR>

"Open existing file
noremap <Leader>e :Explore<CR>

"Switch windows
nnoremap <Leader>m <C-W><C-W>

"launch file in chrome
nnoremap <Leader>g :w!<CR>:!start %<CR>

"Source vimrc-issue with errors
"nnoremap <Leader>v :source ~/Vim/_vimrc<CR>

"Exit buffer or vim
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>c :close!<CR>

"Normal mode for 'o' instead of insert mode
nmap o o<Esc>
nmap O O<Esc>

"Remove scrollbar and tool bar
set guioptions-=T
set guioptions-=r
"Toggle for menu, toolbar, and scrollbar
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>

"Save vim session for next launch of vim (toggles on/off)
nnoremap <leader>t :ToggleWorkspace<CR>

"Sets vim launch screen size
set lines=50 columns=1000

"Insert one character then escape
nnoremap <Leader>i i <ESC>r

"Move [count]characters up or down
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
"
"Move to start or end of line
nnoremap <Leader>h 0
nnoremap <Leader>l $

"Spellcheck 
setlocal spell spelllang=en_us
set spell
nnoremap <Leader>oo :set spell<CR>
nnoremap <Leader>ooo :set nospell<CR>
nnoremap <Leader>on :syntax on<CR>
nnoremap <Leader>of :syntax off<CR>

"Dictionary settings
set complete+=t
set dictionary=/usr/share/dict/words
set complete+=k

