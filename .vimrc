set nocompatible
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
set wildmenu
set showcmd
set rnu
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap
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
Plugin 'ycm-core/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'cseelus/vim-colors-lucid'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            " required
filetype plugin indent on    " required

"Vim Mappings
colo lucid
set background=dark
map <Leader>nt :NERDTree<CR>
