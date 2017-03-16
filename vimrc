" Load bundles automatically using Pathogen
source ~/dotfiles/vim/autoload/pathogen.vim
execute pathogen#infect('bundle/{}', '~/dotfiles/vim/bundle/{}')

" Command-t ignored files on search
set wildignore+=*.log,*.sql,*.cache

" Lightline Settings
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2
set noshowmode         " To disable default status bar

filetype on 
filetype plugin on     " Detect file type
filetype indent on     " Indent based on file type

syntax on              " Enable Syntax Highlighting
set hidden             " Leave hidden buffers open
set history=100        " By default Vim saves your last 8 commands.

set tabstop=4          " Number of spaces for tab
set shiftwidth=4
set expandtab          " Tabs become spaces - easier to <back> on tab as spaces
set textwidth=80       " Line Wrap (number of columns)
set smartindent
set autoindent         " As it says

set number             " Show line numbers
set relativenumber     " Set relative line number for navigation
set cursorline         " Highlight current line

set hlsearch           " Highlight search

set showmatch          " Hightlight matching brackets

set wildmenu           " Visual Autocomplete for vim command

let mapleader=","      " Set <Leader> key

" Reload VIM without restarting
map <leader>s :source ~/.vimrc<CR>

"Cancel search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>  




