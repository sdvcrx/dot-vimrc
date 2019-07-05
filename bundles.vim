call plug#begin(expand('~/.vim/bundle/'))


"------------------
" Code Completions
"------------------
Plug 'mattn/emmet-vim'

" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" code snippets (coc-snippets)
Plug 'honza/vim-snippets'

" auto complete symbol
Plug 'Raimondi/delimitMate'
"Plug 'jiangmiao/auto-pairs'

"-----------------
" Fast navigation
"-----------------
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
Plug 'w0rp/ale'

" defx
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } | Plug 'kristijanhusak/defx-icons'
else
  Plug 'Shougo/defx.nvim' | Plug 'kristijanhusak/defx-icons'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'majutsushi/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'gabesoft/vim-ags'
" Plug 'tpope/vim-fugitive'

" statusline
" Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/eleline.vim'

Plug 'bronson/vim-trailing-whitespace'
Plug 'editorconfig/editorconfig-vim'


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
Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python' }
" Plug 'nvie/vim-flake8', { 'for': 'python' }

"-------- Rust --------------
" Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }
" Plug 'cespare/vim-toml', { 'for': 'toml' }

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
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

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

