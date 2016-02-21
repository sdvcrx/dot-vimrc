if has('vim_starting')
    set rtp+=~/.vim/bundle/neobundle.vim/
endif


call plug#begin(expand('~/.vim/bundle/'))

" let NeoBundle manage NeoBundle
" required!
" NeoBundleFetch 'Shougo/neobundle.vim'

" install/update asynchronously in Unite interface
" if ! has('nvim')
    " NeoBundle 'Shougo/vimproc.vim', {
            " \ 'build' : {
            " \     'windows' : 'tools\\update-dll-mingw',
            " \     'cygwin' : 'make -f make_cygwin.mak',
            " \     'mac' : 'make -f make_mac.mak',
            " \     'unix' : 'make -f make_unix.mak',
            " \    },
            " \ }
" endif




"------------------
" Code Completions
"------------------
Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
"Plug 'davidhalter/jedi-vim'

" auto complete symbol
Plug 'Raimondi/delimitMate'
"Plug 'jiangmiao/auto-pairs'

" code snippets
" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"-----------------
" Fast navigation
"-----------------
Plug 'edsono/vim-matchit'
Plug 'Lokaltog/vim-easymotion'
Plug 'pocke/accelerated-smooth-scroll'

"--------------
" Fast editing
"--------------
Plug 'tpope/vim-surround'
" Plug 'unblevable/quick-scope'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/argtextobj.vim'
Plug 'gcmt/wildfire.vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'vim-scripts/TaskList.vim'

"--------------
" IDE features
"--------------
Plug 'benekastah/neomake'
" Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'gabesoft/vim-ags'
" Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'shougo/unite.vim'


"-------------
" Other Utils
"-------------
Plug 'vim-scripts/fcitx.vim'
Plug 'nvie/vim-togglemouse'
Plug 'szw/vim-ctrlspace'
" Plug 'junegunn/goyo.vim'
Plug 'fmoralesc/vim-pad'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------

"-------- python -----------
Plug 'hdima/python-syntax', { 'for': 'python' }
" Plug 'nvie/vim-flake8', { 'for': 'python' }

"-------- Rust --------------
"Plug 'rust-lang/rust.vim'

"------- web backend ---------
"Plug '2072/PHP-Indenting-for-VIm'
"Plug 'tpope/vim-rails'
"Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }

"------- web frontend ----------
Plug 'othree/html5.vim', { 'for': 'html' }
" Plug 'tpope/vim-haml'
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
" Plug 'kchmck/vim-coffee-script'
" Plug 'nono/jquery.vim'
" Plug 'groenewege/vim-less'
Plug 'wavded/vim-stylus'
" Plug 'nono/vim-handlebars'
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'darthmall/vim-vue', { 'for': 'vue' }

"------- markup language -------
Plug 'plasticboy/vim-markdown', { 'for': 'md' }
" Plug 'Rykka/riv.vim'
" Plug 'timcharper/textile.vim'

"------- Ruby --------
" Plug 'tpope/vim-endwise'

"------- Go ----------
" Plug 'fatih/vim-go'
" Plug 'Blackrush/vim-gocode'

"------- FPs ------
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'wlangstroth/vim-racket'
" Plug 'vim-scripts/VimClojure'
" Plug 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
Plug 'rickharris/vim-blackboard'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'tpope/vim-vividchalk'
Plug 'Lokaltog/vim-distinguished'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'fisadev/fisa-vim-colorscheme'
Plug 'junegunn/seoul256.vim'


call plug#end()

filetype plugin indent on     " required!

