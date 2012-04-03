syntax enable
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

au BufNewFile,BufRead *.rabl set filetype=ruby
au BufNewFile,BufRead *.citrus set filetype=citrus
au BufRead,BufNewFile *.go set filetype=go

set background=dark
colorscheme solarized

runtime macros/matchit.vim
set clipboard=unnamed

set scrolloff=3

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
set laststatus=2

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

cmap w!! w !sudo tee % >/dev/null

" Easy window navigation
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
" map <C-o> <C-w>o

" cleanup shortcut F5
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" copy past below w/ D
vmap D y'>p

" Edit routes
command! Rroutes :Redit config/routes.rb

cmap <silent> syn %s/:\([a-z_][a-z0-9_]*\) =>/\1:/g
autocmd BufWritePre * :%s/\s\+$//e

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"ruby autocomplete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"command-t help
map <leader>p :CommandT<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT public/stylesheets<cr>
map <leader>gg :topleft 40 :split Gemfile<cr>
map <leader>gr :topleft 40 :split config/routes.rb<cr>

map <leader><leader> <C-^>

"Gist stuff
let g:github_token = 'b9433a77479dfbefacf4b65c82a96357'
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_private = 1



