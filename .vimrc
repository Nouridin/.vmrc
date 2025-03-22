
" NOURIDIN'S CONFIG FILES FOR VIMRC
" VERSION : 1.0.0
" DATE : 2025 MARCH 22TH 

set number
filetype on
filetype plugin indent on
filetype plugin on
filetype indent on
set expandtab
set relativenumber

syntax on
set nobackup
set nowb
set noswapfile

colorscheme  spaceduck

set cursorline
set cursorcolumn

set encoding=UTF-8
set shiftwidth=4
set tabstop=4
set nowrap
set incsearch
set smartcase
set showcmd
set showmode

set showmatch
set hlsearch
set history

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-sort-motion'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim'
Plug 'rstacruz/vim-closer'
Plug 'simnalamburt/vim-mundo'
Plug 'vim-airline/vim-airline'
Plug 'wfxr/minimap.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'f-person/git-blame.nvim'
Plug 'wfxr/code-minimap'
Plug 'sainnhe/sonokai'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'


call plug#end()
" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}


" Plugins settings

nmap <F8> :TagbarToggle<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif


