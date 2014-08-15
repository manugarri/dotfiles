" pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

" Move swapfiles to a folder
set directory=~/.vim/swap,.

" Aesthetics
colorscheme Tomorrow
set guifont=Monospace\ 14

" Highlight the cursor's current line
set cursorline

" NerdTree confs
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Move lines up and down because fuck dogma
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

"Good ol copypaste
nmap <C-V> "+gP
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

" Python stuff
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``
highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/
" Highlight the 80th column
set colorcolumn=80

let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_python_flake8_args = '--ignore=E403,E128,F403'
