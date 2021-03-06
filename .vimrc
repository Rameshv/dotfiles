
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

"converting hard tabs to soft (aka 2 spaces on tab)
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab


"Highlight search
set hlsearch
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
Bundle 'Lokaltog/vim-easymotion'

Bundle 'altercation/vim-colors-solarized'

" Node js plugins
Bundle 'moll/vim-node'
Bundle 'kchmck/vim-coffee-script'
Bundle 'myhere/vim-nodejs-complete'
Bundle 'marijnh/tern_for_vim'

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

"vim session plugin"
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

"Bundle 'scrooloose/nerdtree'
Bundle 'docunext/closetag.vim'
Bundle 'tpope/vim-surround'
Bundle 'airblade/vim-gitgutter'

"clojure plugins
Bundle 'tpope/vim-leiningen'
Bundle 'tpope/vim-projectionist'
Bundle 'tpope/vim-dispatch'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-sexp'
Bundle 'kien/rainbow_parentheses.vim'

"Extra goodies
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-commentary'
"Bundle 'wincent/Command-T'
Bundle 'kien/ctrlp.vim'

Bundle 'Chiel92/vim-autoformat'
Bundle 'vim-scripts/ZoomWin'
Bundle 'esneider/YUNOcommit.vim'

Bundle 'ervandew/supertab'
Bundle 'tpope/vim-haml'

"typescript plugins
Bundle 'leafgarland/typescript-vim'

"Enhanced search
Bundle 'haya14busa/incsearch.vim'
Bundle 'osyo-manga/vim-over'

"Ruby method search"'
Bundle 'gorkunov/smartgf.vim'

Bundle 'rking/ag.vim'
Bundle 'saihoooooooo/glowshi-ft.vim'
Bundle 'junegunn/goyo.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'jiangmiao/auto-pairs'

"Scala plugins

Bundle 'derekwyatt/vim-scala'


Bundle 'myusuf3/numbers.vim'

Bundle 'dhruvasagar/vim-table-mode'
Bundle 'jceb/vim-orgmode'

Bundle 'marijnh/tern_for_vim'

Bundle 'Yggdroot/indentLine'

" For code review
Bundle 'junkblocker/patchreview-vim'
Bundle 'codegram/vim-codereview'

"color picker
Bundle "kabbamine/vcoolor.vim"

"color highlighting in css
Bundle "skammer/vim-css-color"

Bundle "cakebaker/scss-syntax.vim"


"vundle config ends

"Always show current position
set ruler

" Set to auto read when a file is changed from the outside
set autoread

" Turn backup off
set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" http://stackoverflow.com/questions/1551231/highlight-variable-under-cursor-in-vim-like-in-netbeans
 :autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
 

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

" File tree browser - backslash
map \ :NERDTreeToggle<CR>
"File tree browser showing current file - pipe (shift-backslash)
map \| :NERDTreeFind<CR>"

" "
" Replace word under cursor globally
nnoremap <Leader>a :%s/\<<C-r><C-w>\>/
 
" Replace word under cursor in line
nnoremap <Leader>s :s/\<<C-r><C-w>\>/

" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" remove whitespace http://vim.wikia.com/wiki/Remove_unwanted_spaces
" " called by leader-m
:nnoremap <silent> <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>"

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
"colorscheme molokai
"colorscheme Monokai

set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set pastetoggle=<F2>

"set guifont=Fantasque\ Sans\ Mono\ Regular:h14

set guifont=FiraCode-Regular:h14

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
noremap <C-S> :wa<CR>
vnoremap <C-S> <C-C>:wa<CR>
inoremap <C-S> <C-O>:wa<CR>


""ctrl-x bind to cut"
noremap <C-X> "+dd<CR>
vnoremap <C-X> <C-C>"+dd<CR>
inoremap <C-X> <C-O>"+dd<CR>



"ctrl-c to yank or copy"
noremap <C-C> "+y<CR>
vnoremap <C-C> <C-C>"+y<CR>
inoremap <C-C> <C-O>"+y<CR>


""ctrl-v to paste"
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
"inoremap <C-f> <Esc>/ 
"noremap <C-f> <Esc>/


"show < or > when characters are not displayed on the left or right.
:set list listchars=precedes:<,extends:>
" Same, but also show tabs and trailing spaces.
:set list listchars=tab:>-,trail:.,precedes:<,extends:>

"Rainbow parenthesis setup

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Quote & unquote shortcut
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

"ctrl p config
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

au BufRead,BufNewFile *.cap set filetype=ruby

"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

"incsearch config
map /f  <Plug>(incsearch-forward)
map /b  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


"Enable YCM omni compltete for clojure
let g:ycm_semantic_triggers = {'clojure':['/','(',' ']}

"Close the doc preview on autocomplete
let g:ycm_autoclose_preview_window_after_insertion = 1
autocmd CompleteDone * pclose

"buffer navigation shortcuts
let mapleader = ","

map <Leader>t :CommandT<Return>
map <Leader>; :bprev<Return>
map <Leader>' :bnext<Return>
map <Leader>d :bd<Return>
map <Leader>f :b 

map <Leader>j :tabp<Return>
map <Leader>k :tabn<Return>

"replace default find with easy motion 
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
