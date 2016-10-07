call plug#begin(expand('~/.vim/bundle/'))


"------------------
" Code Completions
"------------------
" Plug 'Valloric/YouCompleteMe'
Plug 'mattn/emmet-vim'
"Plug 'davidhalter/jedi-vim'

" deoplete
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'javascript' }
" Plug 'zchee/deoplete-go', { 'for': 'go' }

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
Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/argtextobj.vim'
Plug 'gcmt/wildfire.vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'vim-scripts/TaskList.vim'

"--------------
" IDE features
"--------------
Plug 'benekastah/neomake', { 'on': 'Neomake' }
Plug 'benjie/neomake-local-eslint.vim', { 'for': 'javascript' }
" Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } | Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'gabesoft/vim-ags'
" Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'


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
Plug 'digitaltoad/vim-pug', { 'for': 'jade' }

"------- web frontend ----------
Plug 'othree/html5.vim', { 'for': 'html' }
" Plug 'tpope/vim-haml'
" Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
" Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'kchmck/vim-coffee-script'
" Plug 'nono/jquery.vim'
" Plug 'groenewege/vim-less'
" Plug 'wavded/vim-stylus', { 'for': 'stylus' }
" Plug 'nono/vim-handlebars'
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
Plug 'elzr/vim-json', { 'for': 'json' }
Plug 'darthmall/vim-vue', { 'for': 'vue' }
" Plug 'mxw/vim-jsx', { 'for': 'jsx' }

"------- markup language -------
Plug 'plasticboy/vim-markdown', { 'for': 'md' }
" Plug 'Rykka/riv.vim'
" Plug 'timcharper/textile.vim'

"------- Ruby --------
" Plug 'tpope/vim-endwise'

"------- Go ----------
" Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'Blackrush/vim-gocode', { 'for': 'go' }

"------- FPs ------
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'wlangstroth/vim-racket'
" Plug 'vim-scripts/VimClojure'
" Plug 'rosstimson/scala-vim-support'

"------ ansible-vim ----
Plug 'pearofducks/ansible-vim'

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

