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
set termguicolors
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
set mouse=a                                                       " use mouse in all modes
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
autocmd FileType html,htmldjango,xhtml,haml,jade,xml,vue setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
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
    set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
    set laststatus=2                                                  " use 2 lines for the status bar
    set backspace=indent,eol,start                                    " More powerful backspacing
else
    set nohlsearch                                                    " Disable search highlight

    " Use true colors
    " https://github.com/neovim/neovim/wiki/FAQ#how-can-i-use-true-colors-in-the-terminal
    :let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif


"-----------------
" Plugin settings
"-----------------

" =coc.vim=
"
" coc-snippets
" Use <C-l> for trigger snippet expand.
imap <C-e> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" ALE
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
hi link ALEErrorSign    Error
hi link ALEWarningSign  Warning


" JSON
let g:vim_json_syntax_conceal = 0

" python highlight
" let g:python_version_2=1
let g:python_highlight_builtins=1
let g:python_highlight_string_formatting=1
let g:python_highlight_string_format=1
let g:python_highlight_string_templates=1
let g:python_highlight_indent_errors=1
let g:python_highlight_space_errors=1

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" ctrlsf
let g:ctrlsf_ackprg = 'rg'

" CtrlSpace
let g:CtrlSpaceDefaultMappingKey= "<Space>"
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
nmap <Leader>man :Man 3 

" vim-matchit
source $VIMRUNTIME/macros/matchit.vim

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

" Defx
call defx#custom#option('_', {
	\ 'columns': 'indent:git:icons:filename',
	\ 'winwidth': 30,
	\ 'split': 'vertical',
	\ 'direction': 'topleft',
	\ 'show_ignored_files': 0,
    \ 'toggle': 1,
    \ 'resume': 1,
	\ })

autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#do_action('multi', ['drop', 'quit'])
  nnoremap <silent><buffer><expr> c
  \ defx#do_action('copy')
  nnoremap <silent><buffer><expr> m
  \ defx#do_action('move')
  nnoremap <silent><buffer><expr> p
  \ defx#do_action('paste')
  nnoremap <silent><buffer><expr> l
  \ defx#do_action('drop')
  nnoremap <silent><buffer><expr> E
  \ defx#do_action('open', 'vsplit')
  nnoremap <silent><buffer><expr> P
  \ defx#do_action('open', 'pedit')
  nnoremap <silent><buffer><expr> o
  \ defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')
  nnoremap <silent><buffer><expr> M
  \ defx#do_action('new_multiple_files')
  nnoremap <silent><buffer><expr> C
  \ defx#do_action('toggle_columns',
  \                'mark:indent:icon:filename:type:size:time')
  nnoremap <silent><buffer><expr> S
  \ defx#do_action('toggle_sort', 'time')
  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')
  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')
  nnoremap <silent><buffer><expr> !
  \ defx#do_action('execute_command')
  nnoremap <silent><buffer><expr> x
  \ defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> yy
  \ defx#do_action('yank_path')
  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ;
  \ defx#do_action('repeat')
  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> ~
  \ defx#do_action('cd')
  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')
  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'
  nnoremap <silent><buffer><expr> *
  \ defx#do_action('toggle_select_all')
  nnoremap <silent><buffer><expr> j
  \ line('.') == line('$') ? 'gg' : 'j'
  nnoremap <silent><buffer><expr> k
  \ line('.') == 1 ? 'G' : 'k'
  nnoremap <silent><buffer><expr> <C-l>
  \ defx#do_action('redraw')
  nnoremap <silent><buffer><expr> <C-g>
  \ defx#do_action('print')
  nnoremap <silent><buffer><expr> cd
  \ defx#do_action('change_vim_cwd')
endfunction


" nerdcommenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

" emment
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_install_global = 0
" let g:user_emmet_mode = 'iv'
autocmd FileType html,css,jinja,vue EmmetInstall

" vim-pad
let g:pad#dir = '~/.vim/notes'

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

" editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

" FZF
nnoremap <C-P> :Files<CR>

" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F3> :GundoToggle<CR>
nmap <F4> :IndentLinesToggle<CR>
nmap <F5> :TagbarToggle<CR>
nmap <F6> :Defx<CR>
" nmap <F7>
nmap <F8> :ALEToggle<CR>

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
