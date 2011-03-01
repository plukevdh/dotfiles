syntax enable
filetype off
call pathogen#runtime_append_all_bundles() 
filetype plugin indent on

au BufNewFile,BufRead *.citrus set filetype=citrus

colorscheme railscasts

runtime macros/matchit.vim

"no VI compatability
set nocompatible

"cmd showing
set showcmd
set showmode

"search highlighting
set incsearch
set hlsearch
set autoindent

"tab settings
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set smarttab

"wrap and backspace settings
set wrap!
set bs=2

set hidden

set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase

set number
set ruler

"folding settings
set foldnestmax=10
set foldmethod=syntax
set nofoldenable
set foldlevel=1

let mapleader = ","

"Use Y to go from cursor to eol
map Y y$

"tab settings
map <Leader>tt :tabnew<cr>
map <Leader>te :tabedit
map <Leader>tc :tabclose<cr>
map <Leader>to :tabonly<cr>
map <Leader>tn :tabnext<cr>
map <Leader>tp :tabprevious<cr>
map <Leader>tf :tabfirst<cr>
map <Leader>tl :tablast<cr>
map <Leader>tm :tabmove


vmap <Tab> >gv
vmap <S-Tab> <gv

"backup/swapfiles
set nobackup
set nowritebackup


"NERDTree
map <silent> <Leader>ntn :NERDTree<cr>
map <silent> <Leader>ntt :NERDTreeToggle<cr>
map <silent> <Leader>ntc :NERDTreeClose<cr>

let g:rubytest_cmd_test = "rake %p"
let g:rubytest_cmd_testcase = "rake %p -n '/%c/'"

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set nobackup
set noswapfile

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

set pastetoggle=<F2>
nmap <silent> ,/ :nohlsearch<CR>

noremap ; :
cmap w!! w !sudo tee % >/dev/null

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-o> <C-w>o

" navigation while in insert
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

" cleanup shortcut F5
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" copy past below w/ D
vmap D y'>p

" Edit routes
command! Rroutes :Redit config/routes.rb
command! RTroutes :RTedit config/routes.rb

let NERDTreeMapActivateNode="<Space>"

let coffe_compile_on_save = 1
