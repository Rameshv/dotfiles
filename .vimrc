 set nocompatible               " be iMproved
 filetype off                   " required!

" Turn on line numbering. Turn it off with "set nonu" 
set nu 
set shell=bash

set autoindent
set backspace=indent,eol,start
" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr


" Vundle config starts

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle "daylerees/colour-schemes", { "rtp": "vim-themes/" }
Bundle 'gmarik/vundle'
Bundle 'flazz/vim-colorschemes'
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'scrooloose/nerdtree'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'mattn/zencoding-vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'

Bundle 'majutsushi/tagbar'
Bundle 'Valloric/MatchTagAlways'
Bundle 'msanders/snipmate.vim'

Bundle 'Blackrush/vim-gocode'

Bundle 'jdonaldson/vaxe'

Bundle 'bling/vim-airline'
Bundle 'Shougo/unite.vim'
Bundle 'sjl/gundo.vim'
Bundle 'astashov/vim-ruby-debugger'
Bundle 'danchoi/ri.vim'
Bundle 'vim-scripts/AnsiEsc.vim'

"vim shell plugin"
Bundle 'vim-scripts/Conque-Shell'
"vim session plugin"
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

 Bundle 'scrooloose/nerdtree'
 Bundle 'docunext/closetag.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'
Bundle 'airblade/vim-gitgutter'


"vundle config ends

" File tree browser - backslash
 map \ :NERDTreeToggle<CR>
" " File tree browser showing current file - pipe (shift-backslash)
 map \| :NERDTreeFind<CR>"

"Switch between tabs cntrl a - prev, ctrl s- next ctrl n - new tab
map  <C-s> :tabn<CR>
map  <C-a> :tabp<CR>
map  <C-n> :tabnew<CR>

nmap <F8> :TagbarToggle<CR>

syntax on
 
" Indent automatically depending on filetype
set t_Co=256

filetype plugin indent on
":colorscheme bensday
colorscheme molokai

set pastetoggle=<F2>

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

   let g:airline_left_sep = '»'
  let g:airline_right_sep = '«'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'
  let g:airline_powerline_fonts = 1
  let g:airline_theme='jellybeans'
   let g:airline#extensions#branch#enabled = 1
   let g:airline#extensions#branch#empty_message = ''
   let g:airline#extensions#tagbar#enabled = 1
 set lazyredraw
 set laststatus=2
 let coffee_compile_vert = 1
 au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
"Open NerdTree when no file specified"
autocmd vimenter * if !argc() | NERDTree | endif

"Close Vim if the NerdTree is the only window opened"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Ruby debugger status in status line"
set statusline=%{ruby_debugger#statusline()}

"dont store help buffers when save session"
set sessionoptions-=help
let g:session_autosave_periodic=1

" Check whether the current working directory contains a ".vimsessions"
" directory. It it does, we'll configure the vim-session plug-in to load
" its sessions from the ".vimsessions" directory.
" From: https://github.com/xolox/vim-session/issues/49
let s:local_session_directory = xolox#misc#path#merge(getcwd(), '.vimsessions')
 if isdirectory(s:local_session_directory)
   let g:session_directory = s:local_session_directory
 endif
unlet s:local_session_directory
let g:session_autosave='yes'

"Alert when  the file is modified outside "
:au Cursorhold * checktime
:au WinEnter * checktime
:au BufWinEnter * checktime
:au TabEnter * checktime
"Alert end"
