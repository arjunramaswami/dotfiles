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

set background=dark "dark | light "
colorscheme solarized

filetype on 
filetype plugin on     " Detect file type
filetype indent on     " Indent based on file type

syntax on              " Enable Syntax Highlighting
set hidden             " Leave hidden buffers open
set history=100        " By default Vim saves your last 8 commands.
set encoding=utf-8

set tabstop=4          " Number of spaces for tab
set shiftwidth=4       " Number of spaces in visual mode
set expandtab          " Tabs become spaces - easier to <back> on tab as spaces
set textwidth=80       " Line Wrap (number of columns)
set smartindent
set autoindent         " As it says

set number             " Show line numbers
set relativenumber     " Set relative line number for navigation
set cursorline         " Highlight current line
set colorcolumn=80     " Hightlight column 80

set hlsearch           " Highlight search

set showmatch          " Hightlight matching brackets

set wildmenu           " Visual Autocomplete for vim command

let mapleader=","      " Set <Leader> key

" NETRW
"let g:netrw_liststyle=3     " Set netrw list type to tree
"let g:netrw_banner=0        " Remove netrw banner 
"let g:netrw_browse_split=4  " Open files in previous window (2 for vertical)
"let g:netrw_winsize=10      " Set width of netrw to 10%
"let g:netrw_altv=1          " Set right splitting
"augroup DirStructure        " Open netrw on vertical split on entering Vim
"    autocmd!
"    autocmd VimEnter * :Vexplore
"augroup END

" NERDTREE
autocmd vimenter * NERDTree       " Open on vim startup
map <leader>n :NERDTreeToggle<CR> " Toggle shortcut
let g:NERDTreeWinSize=20          " Window Size
autocmd bufenter * if (winnr("$") == 1 
            \ && exists("b:NERDTree") && b:NERDTree.isTabTree())
            \ | q | endif         " Close when on last window

" Reload VIM without restarting:
map <leader>s :source ~/.vimrc<CR>

" Spell check set to F6:
map <F6> :setlocal spell!

" Cancel search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>  

" Change solarized theme on <F5> in Insert Mode
call togglebg#map("<F5>")
