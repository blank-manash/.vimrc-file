set nocompatible
set showcmd
set number
set hlsearch
set ignorecase
set incsearch
set smartcase
set noerrorbells
set belloff=esc
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap
autocmd filetype markdown set spell 
set noswapfile
set mouse=a
set showmatch
set termguicolors
set splitright splitbelow
set autoindent
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'cseelus/vim-colors-lucid'
Plugin 'tpope/vim-surround'
Plugin 'mboughaba/i3config.vim'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'pbogut/fzf-mru.vim'
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'ludovicchabant/vim-gutentags'
"Plugin 'liuchengxu/vim-which-key'
Plugin 'sheerun/vim-polyglot'
call vundle#end()            " required
filetype plugin indent on    " required

"Addtional
set encoding=UTF-8
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
autocmd BufWritePost .vimrc source %
"Vim Mappings
colo lucid
set background=dark
nmap <Leader>nt :NERDTree<CR>
nmap <Leader>fz :Files<CR>
nmap <Leader>mr :FZFMru<CR>

"Scripts
set statusline+=%{gutentags#statusline()}
"Gutentags
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
