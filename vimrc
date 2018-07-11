" Load bundles automatically using Pathogen
source ~/dotfiles/vim/autoload/pathogen.vim
execute pathogen#infect('bundle/{}', '~/dotfiles/vim/bundle/{}')

" Command-t ignored files on search
set wildignore+=*.log,*.sql,*.cache

" -----------------------------------------------
" Lightline Settings
" -----------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
set laststatus=2
set noshowmode         " To disable default status bar

" -----------------------------------------------
" Solarized Theme Settings
" ------------------------------------------------

set background=dark "dark | light "

" option name               default     optional
let g:solarized_termcolors=   16      |   256
let g:solarized_termtrans =   0       |   1
let g:solarized_degrade   =   0       |   1
let g:solarized_bold      =   1       |   0
let g:solarized_underline =   1       |   0
let g:solarized_italic    =   1       |   0
let g:solarized_contrast  =   "normal"|   "high" or "low"
let g:solarized_visibility=   "normal"|   "high" or "low"

colorscheme solarized

call togglebg#map("<F5>")  " Change solarized theme on <F5> in Insert Mode

" ------------------------------------------------

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

" -----------------------------------------------
" NERDTREE
" -----------------------------------------------

autocmd vimenter * NERDTree       " Open on vim startup
map <leader>n :NERDTreeToggle<CR> " Toggle shortcut
let g:NERDTreeWinSize=20          " Window Size
autocmd bufenter * if (winnr("$") == 1 
            \ && exists("b:NERDTree") && b:NERDTree.isTabTree())
            \ | q | endif         " Close when on last window

" -----------------------------------------------

" Reload VIM without restarting:
map <leader>s :source ~/.vimrc<CR>

" Spell check set to F6:
map <F6> :setlocal spell!

" Cancel search with escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>  

" -----------------------------------------------
" CTAGS
" -----------------------------------------------

" Check .git/tags for ctags file.
fun! FindTagsFileInGitDir(file)
  let path = fnamemodify(a:file, ':p:h')
  while path != '/'
    let fname = path . '/.git/tags'
    if filereadable(fname)
      silent! exec 'set tags+=' . fname
    endif
    let path = fnamemodify(path, ':h')
  endwhile
endfun

augroup CtagsGroup
  autocmd!
  autocmd BufRead * call FindTagsFileInGitDir(expand("<afile>"))
augroup END

" -----------------------------------------------
