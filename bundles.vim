if has('vim_starting')
    set nocompatible               " be iMproved
    set rtp+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" let NeoBundle manage NeoBundle
" required!
NeoBundleFetch 'Shougo/neobundle.vim'

" install/update asynchronously in Unite interface
NeoBundle 'Shougo/vimproc.vim', {
        \ 'build' : {
        \     'windows' : 'tools\\update-dll-mingw',
        \     'cygwin' : 'make -f make_cygwin.mak',
        \     'mac' : 'make -f make_mac.mak',
        \     'unix' : 'make -f make_unix.mak',
        \    },
        \ }




"------------------
" Code Completions
"------------------
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'davidhalter/jedi-vim'

" auto complete symbol
NeoBundle 'jiangmiao/auto-pairs'
"NeoBundle 'Townk/vim-autoclose'

" snipmate
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

"------ snipmate dependencies -------
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
NeoBundle 'edsono/vim-matchit'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'pocke/accelerated-smooth-scroll'

"--------------
" Fast editing
"--------------
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'vim-scripts/argtextobj.vim'
NeoBundle 'gcmt/wildfire.vim'
NeoBundle 'terryma/vim-multiple-cursors'
"NeoBundle 'vim-scripts/TaskList.vim'

"--------------
" IDE features
"--------------
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'humiaozuzu/TabBar'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'dyng/ctrlsf.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'shougo/unite.vim'


"-------------
" Other Utils
"-------------
NeoBundle 'vim-scripts/fcitx.vim'
NeoBundle 'nvie/vim-togglemouse'
NeoBundle 'szw/vim-ctrlspace'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------

"-------- python -----------
NeoBundle 'hdima/python-syntax'
NeoBundle 'nvie/vim-flake8'

"------- web backend ---------
"NeoBundle '2072/PHP-Indenting-for-VIm'
"NeoBundle 'tpope/vim-rails'
NeoBundle 'Glench/Vim-Jinja2-Syntax'
"NeoBundle 'digitaltoad/vim-jade'

"------- web frontend ----------
NeoBundle 'othree/html5.vim'
" NeoBundle 'tpope/vim-haml'
" NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'kchmck/vim-coffee-script'
" NeoBundle 'nono/jquery.vim'
" NeoBundle 'groenewege/vim-less'
" NeoBundle 'wavded/vim-stylus'
" NeoBundle 'nono/vim-handlebars'

"------- markup language -------
NeoBundle 'tpope/vim-markdown'
" NeoBundle 'Rykka/riv.vim'
" NeoBundle 'timcharper/textile.vim'

"------- Ruby --------
" NeoBundle 'tpope/vim-endwise'

"------- Go ----------
"NeoBundle 'Blackrush/vim-gocode'

"------- FPs ------
" NeoBundle 'kien/rainbow_parentheses.vim'
" NeoBundle 'wlangstroth/vim-racket'
" NeoBundle 'vim-scripts/VimClojure'
" NeoBundle 'rosstimson/scala-vim-support'

"--------------
" Color Schemes
"--------------
NeoBundle 'rickharris/vim-blackboard'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'Lokaltog/vim-distinguished'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'fisadev/fisa-vim-colorscheme'
NeoBundle 'szw/seoul256.vim'


call neobundle#end()

filetype plugin indent on     " required!

