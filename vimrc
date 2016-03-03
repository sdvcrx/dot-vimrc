source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax highlight and completion
syntax on

" fix syntax highlight off when one buffer quit
set hidden

" map jj to <ESC>
inoremap jj <ESC>

" map leader to comma
let g:mapleader = ','

"--------
" Vim UI
"--------
" color scheme
set background=dark
" color vividchalk
" color molokai
let g:seoul256_background = 234
color seoul256
let g:rehash256 = 1

" highlight current line
au WinLeave * set cursorline nocursorcolumn
au WinEnter * set cursorline nocursorcolumn
set cursorline nocursorcolumn

" search
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set nofoldenable                                                  " disable folding
set confirm                                                       " prompt when existing from an unsaved file
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set visualbell                                                    " don't beep
set noerrorbells                                                  " don't beep
set matchtime=2                                                   " show matching bracket for 0.2 seconds
"set matchpairs+=<:>                                               " specially for html
set cino+=g0                                                      " set c++ indent style
" set nobackup
" set noswapfile
autocmd FileType setlocal matchpairs+=<:>
" set relativenumber

" Default Indentation
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,jade setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css,less,stylus setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


"----------------------
" NeoVim Configuration
"----------------------

" Those options are default in NeoVim already
if ! has('nvim')
    set incsearch
    set nocompatible
    set autoindent
    set history=1000
    set mouse=a                                                       " use mouse in all modes
    set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
    set laststatus=2                                                  " use 2 lines for the status bar
    set backspace=indent,eol,start                                    " More powerful backspacing
else
    set nohlsearch                                                    " Disable search highlight

    " Use true colors
    " https://github.com/neovim/neovim/wiki/FAQ#how-can-i-use-true-colors-in-the-terminal
    :let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    :let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif


"-----------------
" Plugin settings
"-----------------

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/memory/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_key_invoke_completion = '<C-l>'
let g:ycm_error_symbol = '✗'
let g:ycm_warning_symbol = '⚠'
" disable diagnostics
" let g:ycm_enable_diagnostic_highlighting = 0
" disable document
set completeopt-=preview
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'cpp' : ['->', '.', '::'],
  \   'javascript,coffee,python,go' : ['.'],
  \   'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
  \}

" ultisnips
let g:UltiSnipsExpandTrigger='<C-e>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

" JSON
let g:vim_json_syntax_conceal = 0

" python highlight
let g:python_version_2=1
let g:python_highlight_builtins=1
let g:python_highlight_string_formatting=1
let g:python_highlight_string_format=1
let g:python_highlight_string_templates=1
let g:python_highlight_indent_errors=1
let g:python_highlight_space_errors=1

" JavaScript
let g:used_javascript_libs = 'underscore,jquery'

" TernJS
" autocmd FileType javascript setlocal omnifunc=tern#Complete
" autocmd FileType javascript nnoremap <leader>jd :TernDef<CR>

" CoffeeScript
autocmd FileType coffee nmap <C-c> :CoffeeWatch<CR>
let coffee_indent_keep_current = 1

" Neomake
autocmd! BufWritePost * Neomake

" flake8
let g:flake8_cmd="/usr/bin/flake8-python2"
let g:flake8_max_line_length=100
let g:flake8_ignore="E501"

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" ctrlsf
let g:ctrlsf_ackprg = 'ag'

" CtrlSpace
let g:CtrlSpaceDefaultMappingKey= "<C-y>"
hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE
" ctrlspace require
let g:airline_exclude_preview = 1
" Turn off tabline
set showtabline=0
" use ag to accelerate the speed
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" man.vim
source $VIMRUNTIME/ftplugin/man.vim
nmap <Leader>man :Man 3 

" delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" indentLine
let g:indentLine_enabled = 0
let g:indentLine_char = '⁚'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
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

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" vim-nerdtree-tabs
let g:nerdtree_tabs_open_on_gui_startup=0

" nerdcommenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

" emment
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_install_global = 0
" let g:user_emmet_mode = 'iv'
autocmd FileType html,css,jinja EmmetInstall

" vim-pad
let g:pad#dir = '~/.vim/notes'

" riv
" let g:riv_auto_rst2html = 1
" let proj1 = { 'path': '~/Dropbox/Documents/rst/', }
" let g:riv_projects = [proj1]

" markdown
" Highlight YAML frontmatter as used by Jekyll
let g:vim_markdown_frontmatter=1

" Airline
"let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
" let g:airline_theme='powerlineish'
let g:airline_theme='wombat'
let g:airline#extensions#whitespace#enabled = 0

" For snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

" FZF
nnoremap <C-P> :GitFiles<CR>

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F3> :GundoToggle<CR>
nmap <F4> :IndentLinesToggle<CR>
nmap <F5> :TagbarToggle<CR>
nmap <F6> :NERDTreeToggle<CR>
" nmap <F7>
nmap <F8> :Neomake<CR>

" Search something
nnoremap <leader>a :CtrlSF 
" Select all lines
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for gvim
if has("gui_running")
    set go=aAce  " remove toolbar
    " set go=aAcem

    " GVIM theme
    color solarized
    set bg=light
    let g:airline_theme='solarized'

    "set transparency=30
    if has("gui_gtk2")
        set guifont=YaHei\ Consolas\ Hybrid\ 11
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
    set columns=93
    set lines=21
endif
