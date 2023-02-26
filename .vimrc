call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()

" I guess this helps on modern systems?
set nocompatible

" Enable mouse click/select/scroll events. This does
" sometimes cause problems when you try to copy something.
" set mouse=a

" Give the :find command superpower
set path+=**
set wildmenu
set textwidth=1000

set so=7
set ruler

" Define global locations of Vim SWP files, etc.
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set number
set relativenumber

" Be smart when using tabs ;)
set smarttab

set ai "Auto indent
set si "Smart indent

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" This is really the only one that doesn't throw an error.
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

syntax on

let mapleader = ","

" Key mappings
map <leader>q :q<CR>
map <leader>s :w<CR>
map <leader>w :wq<CR>
map <leader>e :NERDTreeToggle<CR>
map <leader>conf :tabnew ~/.config/vim/.vimrc<CR>
map <leader>p :CtrlP<CR>

" Copy the current visual selection
" to the system clipboard. Run vim
" --version and notice the 'clipboard'
" value. If it has a + before it, this
" should work for you.
map <leader>c "*y

" Useful mappings for managing tabs
map <leader>n :tabnew<cr>
map <leader>tn :tabnew<cr>
map <leader>m :tabclose<cr>
map <leader>tt :tabnext<CR>
