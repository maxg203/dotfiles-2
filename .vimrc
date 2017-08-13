set nocompatible              " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All plugin commands should stay between vundle#begin/end
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'jason0x43/vim-js-indent'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/vitality.vim'
Plugin 'sjl/gundo.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on

set splitright
syntax enable

" Set up Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

" Exclude things from ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Set up a lovely colour scheme
let g:solarized_style="dark"
let g:solarized_contrast="high"
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:airline_theme='dark'
set background=dark
colorscheme solarized

" Fix vim search
set hlsearch
set incsearch

" Fix tabs for Python
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set copyindent

" Fix tabs for TypeScript
autocmd FileType typescript setlocal sw=2 ts=2 sts=2
autocmd FileType typescript setlocal number

" Key bindings
nnoremap <C-R> :GundoToggle<CR>

" Highlight long lines
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkred guibg=#111111
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END
