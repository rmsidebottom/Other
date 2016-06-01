set nocompatible

" Vundle setup
let vinstall=0
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let vinstall=1
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" If vim starts too slowly, comment out some bundles
" Bundles
Bundle 'Raimondi/delimitmate'
Bundle 'kien/ctrlp.vim'
Bundle 'VundleVim/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'kien/rainbow_parentheses.vim'

if vinstall == 1
    :BundleInstall
endif

call vundle#end()


syntax enable		" enables syntax processing

" Need to have the proper luna color scheme file in ~/.vim/colors
" https://github.com/notpratheek/vim-luna Is where the stuff is
colorscheme luna-term 	" changes color scheme
set background=light

" turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

set autoread		" updates file when updated while viewing

" Line organization/stuffs
set lbr			" set line break
set tw=80		" on char 80
set wrap		" wrap lines
set number		" show dem line numbers
set relativenumber
set ruler		" always show current position
set cursorline		" highlight current line
set cursorcolumn	" highlight columns
" hi cursorline ctermbg=255
" hi cursorcolumn ctermbg=255
set colorcolumn=80
highlight ColorColumn ctermbg=244

" Tab, space, indents
set autoindent		" auto indents a new line to the same indentation used by previous

" Text specific stuff
set encoding=utf8
set t_Co=256		" Ensure VIM uses 256 colors
set showmatch		" show matching brackets
set matchtime=1		" how many tenths of a second to show matching paren w/ show match set

" Random /misc
set lazyredraw		"redraw only when we need to
set mouse=a		" enable mouse

" Search feature
set incsearch		"search as characters entered
set hlsearch		"highlight matches
set incsearch		"make search like modern browsers
set ignorecase		" ignore case when searching
set smartcase		" if caps, go case sensitive

" Status Bar stuffs
set laststatus=2	" always show status line
			" format status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

" Administration stuff
set title		" show title in console bar title
set showcmd		" display commands as they are typed
set cmdheight=1		" set commandbar height, default

" Command mapping
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q


" Sources:
" https://amix.dk/vim/vimrc.html
" https://github.com/jgeigerm
" https://github.com/nmpiazza

