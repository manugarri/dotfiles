set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Theme
Plugin 'tomasr/molokai'

"Nerd Tree
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'

"Syntax completion
Plugin 'scrooloose/syntastic'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
"Plugin 'Valloric/YouCompleteMe'  

"autoformat plugin
Plugin 'Chiel92/vim-autoformat'

Plugin 'sjl/gundo.vim' 

"Powerline
Plugin 'powerline/powerline'

"CoffeeScript 
Plugin 'kchmck/vim-coffee-script'

"golang
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

" Move swapfiles to a folder
set noswapfile

" Aesthetics
" colorscheme Tomorrow
syntax enable
set background=dark
colorscheme molokai
set guifont=Monospace\ 14

" Highlight the cursor's current line
set cursorline
" show line number
set number



" Smart search
:set ignorecase
:set smartcase

"Tab to 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Move lines up and down because fuck dogma
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

"Open a new tab
nnoremap <C-t> :tabe<CR>

"Good ol copypaste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

"Maps F4 to grep the current word on the current dir
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

" NerdTree confs
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>
"show hidden files
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeIgnore = ['\.fuse*']
" Always set working directory to the file that is opened
set autochdir


" Python stuff
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
" Highlight the 80th column
set colorcolumn=80
set linespace=5

"SYNTASTIC SETTINGS
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_python_flake8_args = '--ignore=E403,E128,F403'

" CtrlP 
set runtimepath^=~/.vim/bundle/ctrlp.vim

"gundo.vim
nnoremap <F5> :GundoToggle<CR>


"powerline
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
