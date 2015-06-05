banbanchs's Vim config(forked from [humiaozuzu/dot-vimrc](https://github.com/humiaozuzu/dot-vimrc)
==================

I use `vundle` to manage my plugins, which makes my `.vim` directory clean and tidy. If you are new to vim, the following two posts

* [Vim Introduction and Tutorial](http://blog.interlinked.org/tutorials/vim_tutorial.html)
* [Vim plugins I use](http://mirnazim.org/writings/vim-plugins-i-use/)

will be good for you.


## Installation

1. Backup your old vim configuration files:

        mv ~/.vim ~/.vim.orig
        mv ~/.vimrc ~/.vimrc.orig

2. Clone and install this repo:

        git clone git@bitbucket.org:banbanchs/dot-vimrc.git ~/.vim
        ln -s ~/.vim/vimrc ~/.vimrc

3. Setup `Vundle`:

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

4. Install bundles. Launch vim(ignore the errors and they will disappear after installing needed plugins)and run:

        :BundleInstall

5. Compile YouCompleteMe:

        cd ~/.vim/bundle/YouCompleteMe
        ./install.sh --clang-completer



#### Most of the time we are writing code so we need: ###
## Code Completions ##

Such as completions for variable names and function names(neocomplcache), expanding snippets(snipMate), auto closing brackets/brace/quote(delimitMate) and fast expand expressions to HTML(emmet).

* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - A fast, as-you-type, fuzzy-search code completion engine for Vim.
* [tern](https://github.com/marijnh/tern_for_vim) - A Vim plugin that provides Tern-based JavaScript editing support.
* [ultisnips](https://github.com/SirVer/ultisnips) - The ultimate snippet solution for Vim.
* [emmet](http://github.com/mattn/emmet-vim) - High speed HTML and CSS coding.
* [delimitMate](https://github.com/Raimondi/delimitMate) - Provides insert mode auto-completion for quotes, parens, brackets, etc.

### Shortcuts

* `Ctrl` + `l` -> Rotate across the completion list
* `Ctrl` + `e` -> Expand snippets or jump to the next placeholder of snippet
* `Ctrl` + `j` -> Call zen-coding expansion on html tags
* `jj` -> map `jj` to `<esc>`
* `<leader>` -> map `,` to `<leader>`

### Dependencies

Compile Vim with `--enable-pythoninterp` and `--enable-rubyinterp` to enable powerful syntax completion supplied by YouCompleteMe.

``` bash
brew install macvim --override-system-vim  # OS X
sudo pacman -S gvim                        # ArchLinux
sudo apt-get install vim-gtk               # Ubuntu
```

### Tutorial

``` vim
:help emmet
```

[Movie teaching.vim](http://mattn.github.com/emmet-vim/)

### Screenshots

![Completions]()
![Snippets]()

#### Sometimes we need to jump to previous positions to copy/paste or do some fixes:
## Fast navigation

* [matchit](http://github.com/edsono/vim-matchit) - Extended % matching for HTML, LaTeX, and many other languages.
* [EasyMotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed!

### Tutorial

``` vim
:help easymotion
```

### Shortcuts

* `%` -> Jump between brackets and html/xml tags
* `<leader>` + `w` -> Beginning of the word.
* `<leader>` + `f` + `{char}` -> Find {char} to the right.

#### Doing fixes should be as fast as possible!
## Fast editing

* [surround](http://github.com/tpope/vim-surround) - Easily delete, change and add such surroundings in pairs.
* [nerdcommenter](http://github.com/scrooloose/nerdcommenter) - Easy commenting of code for many filetypes.
* [Gundo](https://github.com/sjl/gundo.vim/) - visualize your Vim undo tree.
* [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment.
* [IndentGuides](https://github.com/nathanaelkane/vim-indent-guides) - A Vim plugin for visually displaying indent levels in code.

### Tutorial

``` vim
:help text-objexts
:help surround
:help tabular
```

### Shortcuts

* `%` -> Jump between brackets and html/xml tags
* `<leader>` + `c` + `<space>` -> Toggle comment
* `F3` -> Toggle Gundo viewer
* `F4` -> Toggle Indent Guides

## IDE features

* [nerdtree](http://github.com/scrooloose/nerdtree) - A tree explorer plugin for navigating the filesystem.
* [tagbar](http://github.com/majutsushi/tagbar) - Displays the tags of the current file in a sidebar.
* [ctrlsf.vim](https://github.com/dyng/ctrlsf.vim) - An ack/ag powered code search and view tool, in an intuitive way with fairly more context.
* [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) - Fuzzy file, buffer, mru and tag finder.
* [ctrlspace](szw/vim-ctrlspace) - A Vim plugin to control and organize your working space in Vim.
* [airline](https://github.com/bling/vim-airline) - The ultimate vim statusline utility.
* [fugitive](https://github.com/tpope/vim-fugitive/) - A Git wrapper so awesome, it should be illegal.

### Dependencie

```bash
sudo pacman -S the_silver_searcher cmake                # ArchLinux
sudo apt-get install silversearcher-ag cmake python-dev # Ubuntu
brew install the_silver_searcher ctags                  # OS X
```

For syntax check tools:

Languages    | Lint Tools    | Install guide
------------ | ------------- | ------------
C            | clang         | built-in
CPP          | clang++       | built-in
CoffeeScript | coffee        | `npm install -g coffeelint`
CSS          | csslint       | `npm install -g csslint`
Erlang       | escript       | built-in
Go           | go            | built-in
Haml         | haml          | built-in
Haskell      | ghc-mod       | `cabal install ghc-mod`
HTML         | tidy          | built-in
Java         | javac         | built-in
Javascript   | jshint        | `npm install -g jshint`
Json         | jsonlint      | `npm install -g jsonlint`
Less         | lessc         | built-in
Lisp         | clisp         | built-in
Lua          | luac          | built-in
Perl         | perl          | built-in
PHP          | php           | built-in
Puppet       | puppet        | built-in
Python       | pyflakes      | `sudo pip install pyflakes`
Ruby         | ruby          | built-in
Scala        | scala         | built-in
Sass         | sass          | built-in
Scss         | scss/compass  | `gem install compass`
XML          | xmllint       | built-in
YAML         | js-yaml       | `npm install -g js-yaml`

### Shortcuts
* `F5` -> Toggle Nerd-Tree file viewer
* `F6` -> Toggle tagbar
* `F8` -> Toggle syntastic
* `Ctrl` + `p` -> Toggle ctrlp
* `Ctrl` + `y` -> Toggle ctrlspace workspace controller
* `Alt` + `1~9` -> Switch between multiple buffers
* `Ctrl` + `h/j/k/l` -> Moving between spilt windows
* `<leader>` + `a` -> Toggle CtrlSF searching

### Screenshots

![Vim IDE 1]()
![Vim IDE 2]()

## Other Utils

* [fcitx.vim](https://github.com/vim-scripts/fcitx.vim) - keep and restore fcitx state when leaving/re-entering insert mode
* [togglemouse](https://github.com/nvie/vim-togglemouse/) - Toggles the mouse focus between Vim and your terminal emulator, allowing terminal emulator mouse commands, like copy/paste.

### Shortcuts

* `F12` -> Toggle Mouse

## Better syntax/indent for language enhancement

- Server
   - php
   - go
   - rails
   - jinja
   - jade
- Web
   - html5
   - haml
   - javascript
   - coffeescript
   - less
   - stylus
   - handlebar
- Markup language
   - markdown
   - textile
   - rst
- FPs
   - racket
   - clojure
   - scale


## Themes

* [molokai](https://github.com/rickharris/vim-monokai) - A port of the monokai scheme for TextMate
* [solarized](https://github.com/altercation/vim-colors-solarized) - precision colorscheme for the vim text editor
* [seoul](https://github.com/junegunn/seoul256.vim) -  A low-contrast Vim color scheme based on Seoul Colors
* [blackboard](https://github.com/rickharris/vim-blackboard) - Textmate's Blackboard theme for vim (with iTerm2 theme)
* [vividchalk](https://github.com/tpope/vim-vividchalk) - colorscheme based on the Vibrant Ink theme for TextMate
* [distinguished](https://github.com/Lokaltog/vim-distinguished) - A dark vim color scheme for 256-color terminals
* [tomorrow](https://github.com/chriskempson/vim-tomorrow-theme) - Tomorrow Theme for Vim
* [fisa](https://github.com/fisadev/fisa-vim-colorscheme) - soft color scheme for terminals with 256 colors clone in Mac

## Additional functions

1. File encoding auto detection
* Hightlight current line and column
* Automatically jump to the last edited location
* `:w`/`:wq` error correction
* Remove trailing white space(run `:FixWhitespace` in vim)
* Code folding is disabled, enable it as you wish
* `w!!` to write if you forget add sudo
* Indent style:
   * JavaScript - Use soft-tabs with a two space indent(According to this [Post](http://atroche.org/post/30994290348/javascript-indentation)).
   * HTML/CSS - Use soft-tabs with a two space indent(According to Google and Github's HTML/CSS style guide, just Google it).
   * PHP - Use soft-tabs with a two space indent(According to [Apache PHP Style Guide](http://svn.apache.org/repos/asf/shindig/trunk/php/docs/style-guide.html)).
   * Python - Use soft-tabs with a four space indent([PEP8](http://www.python.org/dev/peps/pep-0008/)).

## How to manage this vimrc?

All plugins are listed in file `bundles.vim` with detailed comments, just add plugins as you like.

1. `:NeoBundleClean` to clean up unused plugins
2. `:NeoBundleInstall` to install newly added plugins
3. `:NeoBundleUpdate` to upgrade all plugins
4. `:Unite neobundle/install` to install plugins asynchronously in Unite interface.
5. `:Unite neobundle/update` to update plugins asynchronously in Unite interface.

Other configurations are also well organized in vimrc.

## Known issues

* May has some conflicts with GVIM
