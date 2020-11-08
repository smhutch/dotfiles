" pretty syntax
syntax on
colorscheme dracula

" show last command
set showcmd

" line numbers
set number

" highlight current line
set cursorline

" show info about line at bottom
set ruler

" replace annoying bell with screenflash
set visualbell

" visual autocomplete for command menu 
set wildmenu

" always show status at bottom
set laststatus=2

" highlight open/closing parens
set showmatch

" search as characters entered
set incsearch

" highlight search matches
set hlsearch

" whitespace
set wrap
set textwidth=79
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" install vim-plug if not already
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd Enter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug setup
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
call plug#end()

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
