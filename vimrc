set nocompatible
filetype off

"Vundle setup
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
call vundle#begin()

"If vim starts too slowly, comment out some bundles
"Bundles
Bundle 'VundleVim/Vundle.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rdnetto/YCM-Generator'
Bundle 'Raimondi/delimitmate'
Bundle 'kien/ctrlp.vim'
"nerdtree pen w/ ctrl-t
Bundle 'scrooloose/nerdtree'		 
Bundle 'Xuyuanp/nerdtree-git-plugin'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'kien/rainbow_parentheses.vim'
"line #s (different per mode)
Bundle 'myusuf3/numbers.vim'		
"Easily comment out whole lines, gcc normal mode
Bundle 'tpope/vim-commentary'		
"ctrl-n to select multiple lines
Bundle 'terryma/vim-multiple-cursors'
Bundle 'altercation/vim-colors-solarized'
Bundle 'dikiaap/minimalist'

if vinstall == 1
    :BundleInstall
endif

call vundle#end()
filetype plugin indent on


syntax enable		"enables syntax processing

" Need to have the proper luna color scheme file in ~/.vim/colors
" https://github.com/notpratheek/vim-luna Is where the stuff is
"colorscheme luna-term 	" changes color scheme
" set background=light
set background=dark
let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme PaperColor
colorscheme despacio
"colorscheme spring-night
"colorscheme new-railscasts 

"turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

set autoread		" updates file when updated while viewing

"Line organization/stuffs
set lbr			" set line break
"set tw=80		" on char 80
set wrap		" wrap lines
set number		" show dem line numbers
set ruler		" always show current position
set cursorline		" highlight current line
set cursorcolumn	" highlight columns
"hi cursorline ctermbg=255
"hi cursorcolumn ctermbg=255
set colorcolumn=80
highlight colorcolumn ctermfg=254

"Tab, space, indents
set autoindent		"auto indents a new line to the same indentation used by previous

"Text specific stuff
set encoding=utf8
set t_Co=256		" Ensure VIM uses 256 colors
set showmatch		" show matching brackets
set matchtime=1		" how many tenths of a second to show matching paren w/ show match set
set backspace=2

"Random /misc
set lazyredraw		"redraw only when we need to
set mouse=a		"enable mouse

"Search feature
set incsearch		"search as characters entered
set hlsearch		"highlight matches
set incsearch		"make search like modern browsers
set ignorecase		"ignore case when searching
set smartcase		"if caps, go case sensitive

"Status Bar stuffs
set laststatus=2	"always show status line

"format status line, comment out airline to use this
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set noshowmode
let g:airline_theme = 'base16'
let g:airline_theme='light'

"add features to the airline status bar
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
"These modify sections 3, 4, 6 from the left
let g:airline_section_c='%{getcwd()}/%t%m%r%h%w'		"normally has bufferline or file name
let g:airline_section_x='[TYPE=%Y] [ASCII=%03.3b] [HEX=%02.2B]' "normally has tagbar, filetype, virtualenv
let g:airline_section_z='[POS=%04l,%04v][%p%%] [LEN=%L]' 	"normally has percentage, line number, column number

"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Administration stuff
set title		"show title in console bar title
set showcmd		"display commands as they are typed
set cmdheight=1		"set commandbar height, default

"Command mapping
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q
map <C-t> :NERDTreeCWD<CR>

"Sources:
"The Internet
"https://amix.dk/vim/vimrc.html
"https://github.com/jgeigerm
"https://github.com/nmpiazza
"https://github.com/notpratheek/vim-luna.git
