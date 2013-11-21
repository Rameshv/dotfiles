set nocompatible               " be iMproved
filetype off                   " required!

" Turn on line numbering. Turn it off with "set nonu" 
set nu 
set shell=bash

set autoindent
set backspace=indent,eol,start
"R Case insensitive search
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
"vim-scripts repos
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


"Alt arrow navigation for buffer"

imap <A-Up> <C-O>:wincmd k<CR>
imap <A-Down> <C-O>:wincmd j<CR>
imap <A-Left> <C-O>:wincmd h<CR>
imap <A-Right> <C-O>:wincmd l<CR>

"Switch between tabs cntrl arrow

imap  <C-Left>  <C-O>:tabn <CR>
imap  <C-Right> <C-O>:tabp <CR>

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

"ctrl-s bind to save"
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

"ctrl-x bind to cut"
noremap <C-X> "+dd<CR>
vnoremap <C-X> <C-C>"+dd<CR>
inoremap <C-X> <C-O>"+dd<CR>



"ctrl-c to yank or copy"
noremap <C-C> "+y<CR>
vnoremap <C-C> <C-C>"+y<CR>
inoremap <C-C> <C-O>"+y<CR>



"ctrl-v to paste"
noremap <C-V>  "+gP<CR>
vnoremap <C-V>  <C-C>"+gP<CR>
inoremap <C-V>  <C-O>"+gP<CR>

"ctrl-q to save and quit the session"
noremap <C-Q> :exit<CR>
vnoremap <C-Q> <C-C>:exit<CR>
inoremap <C-Q> <C-O>:exit<CR>

"start vim in insert mode"
au BufRead,BufNewFile * start

"enable mouse wheel"
set mouse=a

"ctrl-z to undo
noremap <C-Z> :undo<CR>
vnoremap <C-Z> <C-C>:undo<CR>
inoremap <C-Z> <C-O>:undo<CR>

"ctrl-r to undo
noremap <C-R> :redo<CR>
vnoremap <C-R> <C-C>:redo<CR>
inoremap <C-R> <C-O>:redo>CR>

"ctrl-f to find"
inoremap <C-f> <Esc>/
noremap <C-f> <Esc>/
"show < or > when characters are not displayed on the left or right.
:set list listchars=precedes:<,extends:>
" Same, but also show tabs and trailing spaces.
:set list listchars=tab:>-,trail:.,precedes:<,extends:>
